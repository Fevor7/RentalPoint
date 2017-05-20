function sendlog() {
	var imp_act = document.querySelector('input[name=action]');
	var imp_log = document.querySelector('input[name=login]');
	var imp_pass = document.querySelector('input[name=pass]');
	
		var params = 'action='+imp_act.value+'&'+'login='+imp_log.value+'&'+'pass='+imp_pass.value;
		if (isEmpty(imp_log.value,imp_pass.value))  document.querySelector('#result2').innerHTML = "Foul all fields";
		else ajaxPost(params);
}

function ajaxPost(params) {
	var request = new XMLHttpRequest();
	
	request.onreadystatechange = function() {
		if(request.readyState == 4 && request.status==200){
			if (request.responseText == 'error') document.querySelector('#result2').innerHTML = "Login or password error";
			else {
			document.querySelector('#autoriz').style.display = "none";
			document.querySelector('#result').innerHTML = request.responseText; }
			
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
	var date_start = document.querySelector('.date_start');
	var date_end = document.querySelector('.date_end');
	var params2 = 'action=create_order&user_id=1&equip_id='+id_eq.value+'&date_start='+date_start.value+'&'+'date_end='+date_end.value+'&Order='+'Send+order';
		ajaxPost2(params2);
}

function ajaxPost2(params2) {
	var request2 = new XMLHttpRequest();
	
	request2.onreadystatechange = function() {
		if(request2.readyState == 4 && request2.status==200){
			document.querySelector('.equiparr').style.display = "none";
			document.querySelector('.arrort2').innerHTML = request2.responseText; 
			
		}
	}
	request2.open('POST','MainServlet');
	request2.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
	request2.send(params2);
}