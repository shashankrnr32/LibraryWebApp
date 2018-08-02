<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Administrator</title>
<link rel="icon" href="images/admin.png" />
<script type="text/javascript">
function myFunction() {
    // Get the snackbar DIV
    var x = document.getElementById("snackbar");
    // Add the "show" class to DIV
    x.className = "show";

    // After 6 seconds, remove the show class from DIV
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 5000);
}
function colorSet(){
	var x = document.getElementById("snackbar");
	x.style.background="#f44a42";
}
function colorSet2(){
	var x = document.getElementById("snackbar");
	x.style.background="#46b740";
}


</script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<style>
body{
	font-family:"Yu Gothic UI Light";
	background:#333;
}
.login_input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid #ccc;
    box-sizing: border-box;
    border-radius:10px;
    box-shadow:1px 1px 2px #e24a4a;
}
.submit_button {
    background-color: #4285f4;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius:10px;
    font-family:"Yu Gothic UI Light";
    font-size:18px;
    font-weight:700;
    box-shadow:1px 1px 2px #e24a4a;
}

.container {
    opacity: 1;
}

.cancelbtn {
	float:right;
    width:100%;
    margin:10% auto 10% 0;
    padding: 10px 18px;
    text-align:center;
    font-family:"Yu Gothic UI Light";
    background-color: #e84c3d;
    border-radius:10px;
    font-size:16px;
    position:relative;
    top:-30px;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display:inline; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    font-family:"Yu Gothic UI Light";
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow:hidden; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.85); /* Black w/ opacity */
    padding: 0px;
    border-radius:15px;
    
}


/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 30%; 
    border-radius:15px;
}
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.8s;
    animation: animatezoom 0.8s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
.title_login{
	text-align:center;
	font-size:20px;
	margin-bottom:50px;
	font-weight:bold;
	width:100%;
}
#snackbar {
    visibility: hidden; /* Hidden by default. Visible on click */
    min-width: 20%; /* Set a default minimum width */
    margin-left: -10%; /* Divide value of min-width by 2 */
    background-color: #333; /* Black background color */
    color: #fff; /* White text color */
    text-align: center; /* Centered text */
    border-radius: 2px; /* Rounded borders */
    padding: 16px; /* Padding */
    position: fixed; /* Sit on top of the screen */
    z-index: 1; /* Add a z-index if needed */
    left: 50%; /* Center the snackbar */
    bottom: 65px; /* 30px from the bottom */
}

/* Show the snackbar when clicking on a button (class added with JavaScript) */
#snackbar.show {
    visibility: visible; /* Show the snackbar */
    -webkit-animation: fadein 2.5s, fadeout 2.5s 2.5s;
    animation: fadein 2.5s, fadeout 2.5s 2.5s;
}

/* Animations to fade the snackbar in and out */
@-webkit-keyframes fadein {
    from {bottom: 0; opacity: 0;} 
    to {bottom: 65px; opacity: 1;}
}

@keyframes fadein {
    from {bottom: 0; opacity: 0;}
    to {bottom: 65px; opacity: 1;}
}

@-webkit-keyframes fadeout {
    from {bottom: 65px; opacity: 1;} 
    to {bottom: 0; opacity: 0;}
}

@keyframes fadeout {
    from {bottom: 65px; opacity: 1;}
    to {bottom: 0; opacity: 0;}
}
</style>
</head>


<body>
<jsp:include page="lib_admin.jsp"></jsp:include>
<%Object s=request.getAttribute("resp");
if(s.toString().equals("1")){%>
	<div id="snackbar">Book Added Successfully</div>
	<script>
	colorSet2();
	</script>
	
<%}else if(s.toString().equals("2")){%>
	<div id="snackbar">Student Added Successfully</div>
	<script>
	colorSet2();
	</script>
<% }
	else{%>
	<div id="snackbar">Some Error Occurred! Please Try Again</div>
	<script>
	colorSet();
	</script>
<%} %>

<script>myFunction()</script>

</body>

</html>
    