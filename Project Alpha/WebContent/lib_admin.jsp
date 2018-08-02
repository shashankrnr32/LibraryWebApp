<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Administrator</title>
<link rel="icon" href="images/admin.png" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
body{
	font-family:"Yu Gothic UI Light";
	overflow-x:hidden;
	padding-bottom:42px;
}
#demo{
	background:#333;
	color:white;
	font-family:"Yu Gothic UI Light";
	padding:10px;
	border-radius:20px;
}
#demo2{
	background:#333;
	color:white;
	font-family:"Yu Gothic UI Light";
	padding:10px;
	border-radius:20px;
}
#demo3{
	background:#333;
	color:white;
	font-family:"Yu Gothic UI Light";
	padding:10px;
	border-radius:20px;
}
input,textarea{
	border-radius:20px;
	width:350px;
	height:40px;
	padding:5px;
	color:black;
}
textarea{
	height:100px;
	resize:none;
}
.date_picker{
width:175px;
}
.help-block{
	color:white;
}
legend{
	color:white;
	font-family:"Yu Gothic UI Light";
}
.btn1{
	background:#333;
	height:50px;
	font-size:18px;
	border-radius:20px;
	color:white;
	box-shadow:1px 3px 2px #e24a4a;
}
.btn_sc{
	background:#41f471;
	height:40px;
	color:black;
	margin-left:2px;
	width:173px;
	border-radius:20px;
	font-size:15px;
	font-weight:bold;

}
.btn_res{
	background:#f45942;
	height:40px;
	width:173px;
	margin-left:2px;
	border-radius:20px;
	font-size:15px;
	color:black;
	font-weight:bold;

}
.MainNavBar{
	background-color:#333;
	height:60px;
	width:100%;
	top:-1px;
	padding:0;
	margin:0;
	position:relative;
	top:-20px;
	box-shadow:1px 4px #e24a4a;
	border-radius:0 0 50px 50px;
	
	
}
.title {
	margin: 1px;
	height:55px;
	font-family: "Yu Gothic UI Light";
	font-weight: 700;
	font-style: normal;
	text-transform: none;
	font-variant: small-caps;
	line-height: normal;
	background-color: #333;
	color:white;
	

	width:100%;
	border-radius:0 0 50px 50px;

	
	
	
	
}
.toolbar {
	margin: 0px;
	margin-left:0px;
	padding: 0px;
	width:inherit;
	height:55px;
	background-color: #333;
    overflow:hidden;
    border-radius:2px;
    
    
   
}
.toolbar a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 18px;
    cursor:pointer;
}
.toolbar a:hover {
    background-color: #ddd;
    color: black;
    box-shadow: 3px 3px 2px grey;
}
.toolbar a.active {
    background-color: #4CAF50;
    color: white;
}
.toolbar-right{
float:right;
}
.s_out{
	float:right;
	width:15%;
	height:35px;
	border-radius:20px;
	margin-right:20px;
	font-weight:600;
	background:#f46242;
	color:black;
}
.all_books{
	float:left;
	width:15%;
	height:35px;
	border-radius:20px;
	margin-left:20px;
	font-weight:600;
	background:#5b8fb2;
	color:black;
}


.bottom_fix{
	min-width:100%; /* Set a default minimum width */
    margin-left: -50%; /* Divide value of min-width by 2 */
    background-color: #333; /* Black background color */
    color: #fff; /* White text color */
    text-align: left; /* Centered text */
    border-radius: 20px 20px 0 0; /* Rounded borders */
    font-family:"Yu Gothic UI Light";
    position: fixed; /* Sit on top of the screen */
     /* Add a z-index if needed */
    left: 50%; /* Center the snackbar */
    bottom: 0px; /* 30px from the bottom */
    height:40px;
}
.bottom_fix1{
	height:100%;
	width:100%;
	color:white;
	margin:0;
	padding:0;	
}
td{
	width:20%;
	font-size:20px;
	border-radius:10px;
	text-align:center;
}
a{
	color:white;
	font-family:"Yu Gothic UI Light";
	border-radius:5px;
}
button{
	background:#333;
	color:white;
	width:100%;
	height:100%;
	border-radius:5px;
	font-family:"Yu Gothic UI Light";
	font-size:22px;
	border:none;

}
</style>
</head>

<body>
<%
  Cookie[] c=request.getCookies(); 
 for(int i=0;i<c.length;i++){
	 if(c[i].getName().equals("cl_access")){
		c[i].setPath(null);
		c[i].setMaxAge(0);
		response.addCookie(c[i]);
		break;
	 }
 }
 %>

<div class="MainNavBar">
<div class="title">
<h1 align="center">ALPHA</h1>
</div>
<%String s= "mailto:alphadev33@gmail.com?subject=Change Password[RIT-ADMIN]&body=PasswordChangeRequest%0D%0A%0D%0A[ENTER YOUR CURRENT PASSWORD HERE]%0D%0A%0D%0A[ENTER YOUR NEW PASSWORD HERE]";%>
</div>
<div class="container" style="width:100%;">
  <button type="button" class="btn1" data-toggle="collapse" data-target="#demo" style="width:100%;" id="function1"><b>Click Here To Add Books</b></button>
  <div id="demo" class="collapse">
    <form class="form-horizontal" action="addbook" method="post">
<fieldset>
<div style="width:50%;">
<button type="submit" class="btn_sc">Add Book</button>
<button type="reset" class="btn_res">Clear</button>
<a href="https://www.barcodesinc.com/generator/index.php?" target="_blank"><button title="Enter Book ID in the form" type="button" class="btn_sc" style="background:#3992d6">Generate Bar-code</button></a>
</div>
<p></p>
<!-- Form Name -->
<legend>Add Books To the Library</legend>
<!-- Text input-->
<div class="control-group" style="float:left;width:50%;">
  <label class="control-label" for="id">Book ID</label>
  <div class="controls">
    <input id="id" name="id" type="text" placeholder="Enter Book ID" class="input-large" required onkeypress="return event.charCode >= 48 && event.charCode <=57;" maxlength=7>
    <p class="help-block">Enter 6 Digit Book ID</p>
  </div>
</div>

<!-- Text input-->
<div class="control-group" style="float:right;width:50%">
  <label class="control-label" for="book_name">Book Name</label>
  <div class="controls">
    <input id="name" name="name" type="text" placeholder="Enter Book Name" class="input-xlarge" required="">
    <p class="help-block">Enter Complete Book Name</p>
  </div>
</div>
<!-- Text input-->
<div class="control-group" style="float:left;width:50%;">
  <label class="control-label" for="author">Author</label>
  <div class="controls">
    <input id="author" name="author" type="text" placeholder="Enter Author's Name" class="input-xlarge" required="">
    <p class="help-block"></p>

  </div>
</div>

<!-- Text input-->
<div class="control-group" style="float:right;width:50%">
  <label class="control-label" for="publisher">Publisher</label>
  <div class="controls">
    <input id="publisher" name="publisher" type="text" placeholder="Enter Publisher's Name" class="input-xlarge" required="">
    <p class="help-block"></p>

  </div>
</div>

<!-- Text input-->
<div class="control-group" style="float:left;width:50%;">
  <label class="control-label" for="category">Category</label>
  <div class="controls">
    <input id="category" name="category" type="text" placeholder="Enter Book's Category" class="input-xlarge" required="">
    <p class="help-block">*Preferably Department</p>
  </div>
</div>

<!-- Text input-->
<div class="control-group" style="float:right;width:50%">
  <label class="control-label" for="pubyear">Published Year</label>
  <div class="controls">
    <input id="pubyear" name="pubyear" type="text" placeholder="Enter Published Year" class="input-small" required onkeypress="return event.charCode >= 48 && event.charCode <=57;" maxlength=4>
    <p class="help-block"></p>
  </div>
</div>
<p class="help-block"></p>

<!-- Textarea -->
<div class="control-group" style="float:left;width:100%;">
  <label class="control-label" for="link">Google Books Link</label>
  <div class="controls">                     
    <textarea id="link" name="link">https://books.google.com</textarea>
  </div>
</div>
<p><br></p>



</fieldset>
</form>

  </div>
  <p>&nbsp;</p>
  <button type="button" class="btn1" data-toggle="collapse" data-target="#demo2" style="width:100%;" id="function2"><b>Add Student Access</b></button>
  <div id="demo2" class="collapse">
      <form class="form-horizontal" method="post" action="studadd">
<fieldset>

<!-- Form Name -->
<legend>Add Student Access</legend>

<div style="width:50%;">
<button type="submit" class="btn_sc">Add Student</button>
<button type="reset" class="btn_res">Reset</button>
<a href="https://www.barcodesinc.com/generator/index.php?" target="_blank"><button type="button" class="btn_sc" style="background:#3992d6" title="Enter USN(Last 6 Characters) in the form">Generate Bar-code</button></a>
</div>
<p></p>


<!-- Prepended text-->
<div class="control-group">
  <label class="control-label" for="sid">Student ID</label>
  <div class="controls">
    <div class="input-prepend">
      <input id="sid" name="sid" value="1MS1" class="input-medium" placeholder="Enter Student ID" type="text" required="">
    </div>
    <p class="help-block">University Seat Number</p>
  </div>
</div>

<!-- Text input-->
<div class="control-group">
  <label class="control-label" for="sname">Student Name</label>
  <div class="controls">
    <input id="sname" name="sname" type="text" placeholder="Enter Student Name" class="input-xlarge" required="">
    <p class="help-block">Full Name</p>
  </div>
</div>
</fieldset>
</form>
</div>

 <p>&nbsp;</p>
<button type="button" class="btn1" data-toggle="collapse" data-target="#demo3" style="width:100%;"><b>Click Here To View Records</b></button>
  <div id="demo3" class="collapse">
    <form class="form-horizontal" action="record_access.jsp" method="get">
<fieldset>
<!-- Form Name -->
<!-- Text input-->
<div class="control-group" style="float:left;width:50%;">
  <label class="control-label" for="id">From Date</label>
  <div class="controls">
    <input id="id" name="id" type="date" class="date_picker" placeholder="DD-MM-YYYY" value="2017-07-01"required="">
    <button type="submit" class="btn_sc">View Records</button>
  </div>
</div>
</fieldset>
</form>
</div>


</div>
<script type="text/javascript"> window.onload = alertName(); </script>

<div class="bottom_fix">
<table class="bottom_fix1">
<tr>
<td style="border-right:1px solid;
	border-left:1px solid;
	border-color:white;">
<a href="default.jsp"><button>
<div>
<span>HOME</span>
<img alt="" src="images/home.png" style="height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;">
</div>
</button></a></td>
<td style="border-right:1px solid;
	border-left:1px solid;
	border-color:white;">
	<a href="Search.jsp?bookSearch=name&Text1=&Text7=Search"><button onclick="Hello()">
	<div>
<span>VIEW ALL BOOKS</span>
<img alt="" src="images/allBooks.png" style="height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;">
</div>
</button></a></td>
<td></td>
<td style="border-right:1px solid;
	border-left:1px solid;
	border-color:white;font-size:16px;">
<a href="<%=s%>" target="_blank"><button onclick="Hello()">
	<div>
<span>CHANGE PASSWORD</span>
<img alt="" src="images/password.png" style="height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;">
</div>
</button></a>
</td>
<td style="border-right:1px solid;
	border-left:1px solid;
	border-color:white;">
<a href="s_out.jsp"><button>
<div>
<span>SIGN OUT</span>
<img alt="" src="images/logout.png" style="height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;">
</div>
</button></a></td>

</tr>
</table>
</div>
</body>

</html>
    