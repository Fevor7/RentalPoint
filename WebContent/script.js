window.onload = function(){
	var imp_act = document.querySelector('input[name=action]');
	var imp_log = document.querySelector('input[name=login]');
	var imp_pass = document.querySelector('input[name=pass]');
	
	document.querySelector('#send').onclick = function(){
		var params = 'action='+imp_act.value+'&'+'login='+imp_log.value+'&'+'pass='+imp_pass.value;
		if (isEmpty(imp_log.value,imp_pass.value))  document.querySelector('#result2').innerHTML = "Foul all fields";
		else ajaxPost(params);
	}
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