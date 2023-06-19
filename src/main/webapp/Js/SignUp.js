function validate_password() {
	var pass = document.getElementById('password').value;
    var confirm_pass = document.getElementById('confirmPassword').value;
    
    if (pass != confirm_pass) {
		document.getElementById('wrongPasswordSpan').style.color = 'red';
        document.getElementById('wrongPasswordSpan').innerHTML = 'Use same password';
       	document.getElementById('create').disabled = true;
    	document.getElementById('create').style.opacity = (0.4);
  		} 
    else {
		document.getElementById('wrongPasswordSpan').style.color = 'green';
		document.getElementById('wrongPasswordSpan').innerHTML = 'Password Matched';
		document.getElementById('create').disabled = false;
		document.getElementById('create').style.opacity = (1);
	}
}
 
function wrongPasswordAlert() {
	if (document.getElementById('pass').value == "" && document.getElementById('confirm_pass').value == "") {
		alert("Your response is submitted");
    } 
    else {
        alert("Please fill all the fields");
    }
          
}