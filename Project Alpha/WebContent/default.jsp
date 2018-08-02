<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>Library Services</title>
<link rel="icon" href="images/icon1.png" />
<link rel="alternate stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>


<script type="text/javascript">
function scrollTo1(){ 
document.getElementById('container1').scrollIntoView(true);
window.scrollBy(0, -36);
}
function scrollTo2(){
document.getElementById('container2').scrollIntoView();
window.scrollBy(0, -36);
}
function scrollTo3(){
	document.getElementById('social').scrollIntoView();
	}
function changePlaceHolder(){
var s=document.getElementById('selectClass');
if(s.value=="name"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter Book Name';
document.getElementsByName('Text1')[0].title='Name';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 32 && event.charCode <= 125;
}
document.getElementsByName('Text1')[0].maxLength='40';


}
else if(s.value=="id"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter ID';
document.getElementsByName('Text1')[0].title='ID';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 48 && event.charCode <=57;
}
document.getElementsByName('Text1')[0].maxLength='6';
}
else if(s.value=="author"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter Author\'s Name';
document.getElementsByName('Text1')[0].title='Author';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 32 && event.charCode <= 125;
}
document.getElementsByName('Text1')[0].maxLength='40';
}
else if(s.value=="publisher"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter Publisher\'s Name';
document.getElementsByName('Text1')[0].title='Publisher';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 32 && event.charCode <= 125;
}
document.getElementsByName('Text1')[0].maxLength='40';

}
else if(s.value=="pubyear"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter Year Of Publication';
document.getElementsByName('Text1')[0].title='Year of Publication';
document.getElementsByName('Text1')[0].maxLength='4';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 48 && event.charCode <= 57;
}
}
else if(s.value=="category"){
document.getElementsByName('Text1')[0].value='';
document.getElementsByName('Text1')[0].placeholder='Enter Category';
document.getElementsByName('Text1')[0].title='Category';
document.getElementsByName('Text1')[0].onkeypress=function myfunction(){
    return event.charCode >= 32 && event.charCode <= 125;
}
document.getElementsByName('Text1')[0].maxLength='40';

}
}
function alert_root(){
	alert("Access Root to Change the password!");
	modal.style.display = "none";
}
onload=function(){
	var e=document.getElementById("refreshed");
	if(e.value=="no")e.value="yes";
	else{e.value="no";location.reload();}
	}


</script>
<style type="text/css">
body{
	font-family: "Yu Gothic UI Light";
	font-size: medium;
	font-weight: normal;
	font-style: normal;
	line-height: 0px;
	padding:0;
	margin:0;
	overflow-x:hidden;
	background:#595959;
}
body::-webkit-scrollbar{
	width:4px;
	background-color:grey;
	border-radius:50px;
}
body::-webkit-scrollbar-track {
    box-shadow:10px 10px white;
    }
body::-webkit-scrollbar-thumb {
  background-color: white;
  outline: 1px solid slategrey;
  border-radius:50px;
 
}

.MainNavBar{
	background-color:#333;
	height:80px;
	width:100%;
	top:-1px;
	padding:0;
	margin:0;
	position:relative;
	top:-14px;
	box-shadow:1px 4px #e24a4a;
	border-radius:0 0 50px 50px;
	
	
}
.title {
	margin: 1px;
	height:45px;
	font-family: "Yu Gothic UI Light";
	font-weight: 700;
	font-style: normal;
	text-transform: none;
	font-variant: small-caps;
	line-height: normal;
	background-color: #333;
	color:white;
	width:100%;
	
	
	
	
}
.toolbar {
	margin: 0px;
	margin-left:0px;
	padding: 0px;
	width:inherit;
	height:35px;
	background-color: #333;
    overflow:hidden;
    position:fixed;
    top:0px;
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
.container1{
	background-color: #333;
	height:480px;
	margin-top:1px;
	margin-bottom:0;
	color:white;
	top:-14px;
	marrgin-top:-20px;
	box-shadow:1px 3px 2px #e24a4a;
	border-radius:50px;
}
.container1 img{
	float:right;
	width:640px;
	height:100%;
	margin-bottom:10px;
	border-radius:0px 50px 50px 0px;
	vertical-align:top;
	padding:0;
}
.container1 h1{
	float:left;
	text-align:center;
}
.container1 p{
	float:left;
	font-size:15px;
}
.container1 br{
	float:left
}
.container-inside{
	float:left;
	width:200px;
	height:100%;
	
}
.container-inside h1{
    float:left;
    padding:40px;
	width:800px;
	font-size:25px;
	margin-left:125px;
    text-align:justify;
}
.container-inside p{
	float:left;
	width:800px;
	font-size:20px;
	
	padding-left:40px;
	margin-left:75px;
}
.container-inside a{
	width:100px;
	margin-left:148px;
	color:white;
}
.container-inside button{
	width:200px;
	height:60px;
	background:#333;
	color:white;
	border-style:double;
	border-radius:35px;
	cursor:pointer;
	margin-left:34px;
	font-family:"Yu Gothic UI Light";
	font-size:medium;
	box-shadow:1px 3px 2px #e24a4a;
}
.container-inside button:hover{
	background-color:white;
	color:#333;
	font-weight:900;
}
.container2{
	float:none;
	background-image:url(images/search_books.jpg) ;
	background-position:center;
	background-color:#333;
	background-repeat:inherit;
	height:610px;
	margin-top:1px;
	text-align:center;
	position:static;
	vertical-align:top;
	position:static;
	top:-14px;
	box-shadow:1px 3px 2px #e24a4a;
	border-radius:50px;
}
.container2 h1{
	text-align:center;
}
.container2 p{
	font-size:15px;
	height:30px;
}
form{
	padding:0px;
	background:#333;
	border-radius:75px;
	margin-left:375px;
	margin-right:375px;
	box-shadow:1px 3px 2px #e24a4a;
}
form h1{
	color:white;
	text-align:center;
	font-size:24px;
}
.form_header{
	background-color:#666666;
	height: 75px;
	margin:0;
	padding:0;
	border-radius: 75px 75px 0px 0px;
}
.bottom_back{
	background-color:#666666;
	height: 75px;
	margin:0;
	padding:0;
	border-radius: 0px 0px 75px 75px;
}
input{
	color:white;
	background-color:#333;
	width:288px;
	height:40px;
	font-family:"Yu Gothic UI Light";
	font-size:18px;
	font-weight:bold;
	margin-left:2px;
	border:thin;
	padding-left: 12px;
	border-radius:10px;
}
.submit{
	border:thick;
	width:146px;
	height:45px;
	color:white;
	elevation:lower;
	background-color:#333;
	cursor:pointer;
	margin-top:5px;
}
.submit:hover{
	background-color:white;
	color:#333;
	font-weight:bold;
}
.reset{
	border:thick;
	width:146px;
	height:45px;
	color:white;
	elevation:higher;
	background-color:#333;
	cursor:pointer;
	margin-top:5px;

}
.reset:hover{
	background-color:white;
	color:#333;
	font-weight:bold;
}
.selectClass{
	background:#333;
	width:300px;
	height:40px;
	font-family:"Yu Gothic UI Light";
	font-weight:bold;
	color:white;
	font-size:16px;
	border-radius:10px;
}
.form_middle{
	background-color:#666666;
	margin:25px;
	border-radius:100px;
}
option{
	font-family:"Yu Gothic UI Light";
	font-size:17px;
	padding:12px;
	}
	
	.fa {
	float:right;
    padding: 10px;
    font-size: 30px;
    width: 30px;
    text-align: center;
    text-decoration: none;
    border-radius:50%;
}
.fa:hover {
    opacity: 0.7;
}
.fa-facebook {
    background: #3B5998;
    color: white;
    margin-right:3px;
}
.fa-linkedin{
	background: #007bb6;
	color: white;
	margin-right:4px;
}
.fa-google{
	background:#dd4d42;
	color:white;
	margin-right:4px;
}
.social {
	background-color:#333;
	border-radius:50px 50px 0 0;
	color:white;
	width:100%;
	height:370px;
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
    display: none; /* Hidden by default */
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
    border-radius:10px;
    
}


/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 10% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 30%; 
    border-radius:10px;
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
	background:#333;
}

.container_3 {
    padding: 0 16px;
}
.container_3::after, .row::after {
    content: "";
    clear: both;
    display: table;
}

.title_1 {
    color: grey;
}


.animate {
    -webkit-animation: animatezoom 1s;
    animation: animatezoom 1s
}
.one_drive{
padding-left:25px;
border-radius:5px;
font-family:"Yu Gothic UI Light";
margin:5px;
float:left;
}
</style>
</head>
<body>
<%@ page import="java.time.LocalDateTime" %>
<%!String s=null,s1=null,s2=null,s3=null; %>
<%
  Cookie[] c=request.getCookies();
try{
 for(int i=0;i<c.length;i++){
	 if(c[i].getName().equals("lib_admin")&&c[i].getMaxAge()!=0){
		s="lib_admin.jsp";
		s2="ADMIN";
	 }
	 else{
		 s="psw_validate.jsp";
		 s2="LIBRARY ADMIN LOGIN";
	 }
 }
 for(int i=0;i<c.length;i++){
	 if(c[i].getName().equals("cl_access")&&c[i].getMaxAge()!=0){
		s1="cl_access.jsp";
		s3=c[i].getValue();
	 }
	 else{
		 s1="access.jsp";
		 s3="ISSUE/RETURNS";
	 }
 }
}
catch(Exception e){
	 s="psw_validate.jsp";
	 s2="LIBRARY ADMIN LOGIN";
	 s1="access.jsp";
	 s3="ISSUE/RETURNS";
	 System.out.println("SESSION STARTED AT:"+LocalDateTime.now());
	 System.out.println("------------------------------------------------------------------------------------------------------------"); 
	 Cookie cookie=new Cookie("HOME","@PROJECT_alpha"); 
	 response.addCookie(cookie);
}
finally{
	System.out.println("HOME PAGE LOADING STARTED AT:"+LocalDateTime.now());
 %>
 
 
<div class="MAIN animate" style="line-height:0;">
<div class="MainNavBar">
<div class="toolbar">
<a href="#">HOME</a>
<a onclick="scrollTo3()">ABOUT</a>
<a href="Report_java.pdf" onClick="MyWindow=window.open('Report_java.pdf','MyWindow',width=600,height=300); return false;">PROJECT REPORT</a>
<div class="toolbar-right">
<a onclick="scrollTo1()"><%=s3 %></a>
<a onclick="scrollTo2()">SEARCH BOOKS</a>
<%if(s.equals("lib_admin.jsp")){%>
<a href="<%=s%>" style="width:auto;"><%=s2 %></a>
<%}else {%>
<a onclick="document.getElementById('id01').style.display='block'" style="width:auto;">LIBRARY ADMIN LOGIN</a>
<%} %>
</div>
</div >
<div class="title">
<p>&nbsp;</p>
<h1 align="center">ALPHA LIBRARY APPLICATION</h1>
</div>
</div><div class="container1" id="container1">
<img alt="" src="images/issue.jpg"></img>
<br></br>
<p></p>
<p><br></br></p>
<div class="container-inside">
<h1>ISSUE/RETURN BOOKS</h1>
<p>Click Below to Access Issue/Return Portal</p>
<p></p>
<a href="<%=s1%>"><button name="issue" title="Issue/Return Books">Click Here</button></a>
</div>
</div>


<div class="container2" id="container2">
<p>&nbsp;</p>
<form class="formSignUP" id="search_books" method="get" action="Search.jsp">
<div class="form_header">
<p>&nbsp;</p>
<h1>SEARCH BOOKS</h1>
<p>&nbsp;</p>
</div>
<div class="form_middle">
<p></p>
<p></p>
<select class="selectClass" id="selectClass" name="bookSearch" onchange="changePlaceHolder()">
<option id="name" value="name">BOOK NAME</option>
<option id="id" value="id">BOOK ID</option>
<option id="author" value="author">AUTHOR</option>
<option id="publisher" value="publisher">PUBLISHER</option>
<option id="pubyear" value="pubyear">YEAR OF PUBLICATION</option>
<option id="category" value="category">CATEGORY</option>
</select>
<p>&nbsp;</p>
<div style="text-align:center;">
<input name="Text1" id="Text1" type="text" title="Leave this Field Empty to view all Available Books">&nbsp;</input>
<p>&nbsp;</p>
</div>
<p>&nbsp;</p>
</div>
<div class="bottom_back">
<div style="text-align:center;">
<input  class="submit" name="Text7" type="submit" id="Text7" title="Submit" value="Search"></input>
<input class="reset" name="Text8" type="reset" id="Text8" title="Clear" ></input>
</div>
<p>&nbsp;</p>
</div>
</form>
</div>

<p></p>
<p>&nbsp;</p>


<div class="social" id="social">
<p>&nbsp;</p>
<p style="margin-left:10px;font-weight:800;font-size:20px;">&nbsp;&nbsp;&nbsp;&nbsp;<b>Project Developers</b>: Shashank Sharma, Varun S S</p>
<br></br>
<p>&nbsp;</p>
<a href="https://1drv.ms/f/s!AhYpn99IW5siy1X1klODcW5XaELL" style="padding:10px;margin-left:20px;font-size:13px;color:white;" target="_blank">Click Here To Download The Project Files</a>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>Image Courtesy</b>: Google Images</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>Icon Courtesy</b>: Icons8 & W3-CSS</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>Courtesy</b>: Bootstrap Framework</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>HTML5 Editor</b>: Microsoft Expression Web4</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>Powered By</b>: XAMPP & Eclipse</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p style="margin-right:20px;font-weight:500;font-size:13px;float:right;color:#a9abad;"><b>Barcode Support: </b>Barcode Scanner by Zxing, Clipbrd</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<a href="mailto:alphadev33@gmail.com" class="fa fa-google"></a>
</div>


<div id="id01" class="modal">
  <form class="modal-content animate" method="post" action="psw_validate.jsp">  
    <div class="container">
    <p class="title_login">Library Admin</p>  
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" class="login_input" name="uname" required />
      <p>&nbsp;</p>
      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" class="login_input" name="psw" required />
      <p>&nbsp;</p> 
      <button type="submit" class="submit_button">Login</button>
      <p></p>
      <a onclick="alert_root()" style="cursor:pointer;font-weight:800;">Forgot Password?</a>
    </div>
    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
    </div>
  </form>
</div>
<script type="text/javascript">
var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";}}
</script>

</div>

<input type="hidden" id="refreshed" value="no"/>

</body>
<%System.out.println("HOME PAGE LOADING COMPLETE AT:"+LocalDateTime.now());
System.out.println("------------------------------------------------------------------------------------------------------------");} %>
</html>
    