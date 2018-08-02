<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Login</title>
<link rel="icon" href="images/key.png" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<script type="text/javascript">
function alert_root(){
	alert("Contact Admin");
}
</script>
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
</style>
</head>


<body>
<div id="id01" class="w3-container w3-center w3-animate-bottom">
  
  <form class="modal-content animate" action="cl_psw_validate.jsp" method="post">
    
    <div class="container">
    <p class="title_login">Issue/Return Portal</p>
    
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" class="login_input" name="uname" required />
      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" class="login_input" name="psw" required /> 
      <button type="submit" class="submit_button">Login</button>
      	
      <a onclick="alert_root()" style="cursor:pointer;font-weight:800;" >Forgot Password?</a>
    </div>
    
      	<button type="button" onclick="window.history.back();" class="cancelbtn">Cancel</button>
    	
  </form>
</div>

</body>

</html>
    