function logIn(){
	if (document.querySelector('.modal').style.display=="block") {
		document.querySelector('.modal').style.display = "none";
	} else {
		document.querySelector('.modal').style.display="block";
	}	
}

function showContent(link) {  
    var cont = document.getElementById('arrort');    
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
	document.querySelector('.arrort').style.display = "none";
	
}
function createWorkSp(){
	document.querySelector('.arrort').style.display = "block";
	
}
function pressEnter(event){
	if(!event.shiftKey && event.keyCode==13) 
		sendlog();
}

function outEquip() {
	var params2 = 'action=equipList';
	var request2 = new XMLHttpRequest();
	request2.onreadystatechange = function() {
		if(request2.readyState == 4 && request2.status==200){
			document.querySelector('.arrort').style.display = "block";
			document.querySelector('#autoriz').style.display = "none";
			document.querySelector('.arrort').innerHTML = request2.responseText; 
		}
	}
	request2.open('POST','MainServlet');
	request2.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	request2.send(params2);
}

function sendlog() {
	var imp_log = document.querySelector('input[name=login]');
	var imp_pass = document.querySelector('input[name=pass]');
	
		var params = 'action=login'+'&'+'login='+imp_log.value+'&'+'pass='+imp_pass.value;
		if (isEmpty(imp_log.value,imp_pass.value))  document.querySelector('.error').innerHTML = "Foul all fields";
		else ajaxPost(params);
}

function ajaxPost(params) {
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status==200){
			if (request.responseText == 'error') document.querySelector('.error').innerHTML = "Login or password error";
			else {
			document.querySelector('.arrort').style.display = "block";
			document.querySelector('#autoriz').style.display = "none";
			document.querySelector('.arrort').innerHTML = request.responseText; }
			
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

function a(par,par2){
		document.querySelector('#order').style.display = "block";
	document.querySelector('.eqtitle').innerText=par;
	document.querySelector('.id_eq').value=par2;
	
}

function sendord(){
	var id_eq = document.querySelector('.id_eq');
	var date_start = document.querySelector('#date_start');
	var date_end = document.querySelector('#date_end');
	var params2 = 'action=create_order&user_id=1&equip_id='+id_eq.value+'&date_start='+date_start.value+'&'+'date_end='+date_end.value+'&Order='+'Send+order';
		ajaxPost2(params2);
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