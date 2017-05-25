function filterApply() {
	var praceMin = document.querySelector('.linePraceMin');
	var praceMax = document.querySelector('.linePraceMax');
	
		var params = 'action=equipList'+'&'+'type=all'+'&'+'name=all'+'&'+'filter=yes'+'&'+'filterPrMin='+praceMin.value+'&'+'filterPrMax='+praceMax.value;
		if (isEmpty(praceMin.value,praceMax.value))  document.querySelector('.errorFilr').innerText = "Fill all fields";
		else ajaxPostFilter(params);
}
function ajaxPostFilter(params) {
	var request = new XMLHttpRequest();
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status==200){
			document.querySelector('.equipList').innerHTML = request.responseText;
		}	
	}
	request.open('POST','MainServlet');
	request.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	request.send(params);
}
function logIn(){

	if (document.querySelector('.modal').style.display=="block") {
		document.querySelector('.modal').style.display = "none";
	} else {
		document.querySelector('.modal').style.display="block";
	}
}

function showPage(link,modal) {  
	document.querySelector('#slider-wrap').style.display = "none";
    var cont = document.getElementById(modal);    
    var http = createRequestObject();  
    if( http )   
    {  
        http.open('get', link);  
        http.onreadystatechange = function ()   
        {  
            if(http.readyState == 4)   
            {  
            	createWorkSp();
                cont.innerHTML = http.responseText;  
            }  
        }  
        http.send(null);      
    }  
    else   
    {  
        document.location = link;  
    }  
}  

function createRequestObject()   
{  
    try { return new XMLHttpRequest() }  
    catch(e)   
    {  
        try { return new ActiveXObject('Msxml2.XMLHTTP') }  
        catch(e)   
        {  
            try { return new ActiveXObject('Microsoft.XMLHTTP') }  
            catch(e) { return null; }  
        }  
    }  
}  

function homePage(){
	document.querySelector('#slider-wrap').style.display = "block";
	document.querySelector('.arrort').style.display = "none";
	
}
function createWorkSp(){
	document.querySelector('.arrort').style.display = "block";
	
}
function pressEnter(event){
	if(!event.shiftKey && event.keyCode==13) 
		sendLog();
}

function outEquip(typeEQ,nameEQ) {
	showPage('equipmentPage.jsp','arrort');
	var params2 = 'action=equipList'+'&'+'type='+typeEQ+'&'+'name='+nameEQ+'&'+'filter=no';
	var request2 = new XMLHttpRequest();
	request2.onreadystatechange = function() {
		if(request2.readyState == 4 && request2.status==200){
			document.querySelector('.equipList').innerHTML = request2.responseText; 
		}
	}
	request2.open('POST','MainServlet');
	request2.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	request2.send(params2);
}
function session() {
		var params = 'action=log';
		ajaxPost3(params);
}
function ajaxPost3(params) {
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status==200){
			if(document.querySelector('.LogIn').innerText!=request.responseText){
				document.querySelector('.LogIn').innerText=request.responseText;
			}
			
		}	
	}
	request.open('POST','MainServlet');
	request.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	request.send(params);
}
function sendLog() {
	var imp_log = document.querySelector('input[name=login]');
	var imp_pass = document.querySelector('input[name=pass]');
	
		var params = 'action=login'+'&'+'login='+imp_log.value+'&'+'pass='+imp_pass.value;
		if (isEmpty(imp_log.value,imp_pass.value))  document.querySelector('.error').innerHTML = "Fill all fields";
		else ajaxPost(params);
}

function ajaxPost(params) {
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status==200){
			switch (request.responseText){
			case 'error': {
				document.querySelector('.error').innerHTML = "Login or password error"; break;
			}
			case 'user1': {
			document.querySelector('.LogIn').innerText="User1"; 
			document.querySelector('#autoriz').style.display = "none";
			break;
			}
			default: {
				document.querySelector('.arrort').style.display = "block";
				document.querySelector('#autoriz').style.display = "none";
				document.querySelector('.arrort').innerHTML = request.responseText; }
			}
		}
	}
	request.open('POST','MainServlet');
	request.setRequestHeader('Content-Type',
			'application/x-www-form-urlencoded');
	request.send(params);
}
function isEmpty(str,str2){
    return (str == null) || (str.length == 0)||(str2 == null) || (str2.length == 0);
   }

function orderForm(par,par2){
	
		document.querySelector('#order').style.display = "block";
	document.querySelector('.eqtitle').innerText=par;
	document.querySelector('.id_eq').value=par2;
	
}

function sendord(){
	var id_eq = document.querySelector('.id_eq');
	var date_start = document.querySelector('#date_start');
	var date_end = document.querySelector('#date_end');
	var params2 = 'action=create_order&user_id=1&equip_id='+id_eq.value+'&date_start='+date_start.value+'&'+'date_end='+date_end.value+'&Order='+'Send+order';
		
	if(document.querySelector('.LogIn').innerText=="LOGIN"){
		document.querySelector('.modal').style.display="block";
	} else {
	ajaxPost2(params2); }
}

function ajaxPost2(params2) {
	var request2 = new XMLHttpRequest();
	
	request2.onreadystatechange = function() {
		if(request2.readyState == 4 && request2.status==200){
			document.querySelector('.equiparr').style.display = "none";
			document.querySelector('.arrort').innerHTML = request2.responseText; 
			
		}
	}
	request2.open('POST','MainServlet');
	request2.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	request2.send(params2);
}