<html>
<head>
<meta name="layout" content="loginTemplate"/>
</head>
<body>
<div class="pen-title">
	<h1>Sanjal</h1>
    <h2 class="title">${message}</h2>
</div>
<div class="rerun"><a href="">Rerun</a></div>
<div class="container">
	<div class="card"></div>
	<div class="card">
		<h1 class="title">Login</h1>
		<g:form controller="user" action="login">
			<div class="input-container">
				<g:textField name="userEmail" required="required"></g:textField><br>
				<label>User Email</label>
				<div class="bar"></div>
			</div>
			<div class="input-container">
				<g:passwordField name="password" required="required"></g:passwordField><br>
				<label>Password</label>
				<div class="bar"></div>
			</
			<div class="button-container">
				<button><span>Go</span></button>
			</div>
			%{--<div class="footer"><a href="#">Forgot your password?</a></div>--}%
		</g:form>
		<g:submitButton name="don" value="don" onclick="getLocation()"></g:submitButton>
		<g:textField name="lon" id="lon" ></g:textField>
		<g:textField name="lat" id="lat"></g:textField>
	</div>
	<div class="card alt">
		<div class="toggle"></div>
		<h1 class="title">Register
			<div class="close"></div>
		</h1>
         <g:form controller="user" action="register">
			 <div class="input-container">
				 <g:field type="email" name="userEmail" required="required"></g:field><br>
				 <label>User Email</label>
				 <div class="bar"></div>
			 </div>
			 <div class="input-container">
				 <g:passwordField name="password" required="required"></g:passwordField><br>
				 <label>Password</label>
				 <div class="bar"></div>
			 </div>
			<div class="button-container">
				<button><span>Next</span></button>
			</div>
		</g:form>
	</div>
</div>

</body>
<script>
	function getLocation() {
		if (navigator.geolocation) {
			document.getElementById("lat").value = "i am boss";
           navigator.geolocation.getCurrentPosition(showPosition);
		} else {
			x.innerHTML = "Geolocation is not supported by this browser.";
		}
	}

	function showPosition(position) {
		document.getElementById("lat").value = "i am boss";
		document.getElementById("lon").value = position.coords.longitude;
	}
</script>
<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASQXFgQ-RNo8KSxPLlGwm5VLj1JUf0FQU&callback=initMap">
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</html>