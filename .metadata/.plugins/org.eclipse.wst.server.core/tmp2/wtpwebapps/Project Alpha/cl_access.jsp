<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<script type="text/javascript">
function Hello(){
	document.getElementById('id01').style.display='block'
	
}
function records_books(){
	var x=confirm("You are about to be redirected to XAMPP phpMyAdmin Page");
	if(x==true){
		alert("Go to Bookmarked-Queries section and select \"Book Records\"\nThen Click GO");
		MyWindow=window.open('http://localhost:808/phpmyadmin/tbl_sql.php?db=project+alpha&table=sdb','MyWindow',width=600,height=300);
		win.focus();
	}
	
	
}
function HelloFunction(){
	var x=document.getElementById('hello');
	var s=document.getElementById('selectclass');
	var r=document.getElementById('reset_btn');
	var b=document.getElementById('hello2');
	if(s.value=="1"||s.value=="2"){
	x.style.display='none';
	r.style.display='none';
	b.style.cssFloat='left';
	b.style.paddingLeft='220px';
	}
	else{
	x.style.display='inherit';
	r.style.display='inline';
	b.style.paddingLeft='0';
	b.style.cssFloat='right';
	}
	}

</script>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>Issue/Return Portal</title>
<link rel="icon" href="images/issue.png" />
<style>
body{
padding:0;
margin:0;
overflow-x:hidden;

}
.bottom_fix{
	min-width:100%; /* Set a default minimum width */
    margin-left: -50%; /* Divide value of min-width by 2 */
    background-color: #333; /* Black background color */
    color: #fff; /* White text color */
    text-align: left; /* Centered text */
    border-radius: 2px; /* Rounded borders */
    font-family:"Yu Gothic UI Light";
    position: fixed; /* Sit on top of the screen */
    z-index: 1; /* Add a z-index if needed */
    left: 50%; /* Center the snackbar */
    bottom: 0px; /* 30px from the bottom */
    height:40px;
}
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 80%;
    font-family:"Yu Gothic UI Light";
    width: 100%; /* Full width */
    height: 20%; /* Full height */
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
    width: 35%; 
    margin-top:10px;
    border-radius:10px;
    color:white;
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
	border-radius:5px;
	text-align:center;
}
a{
	color:white;
	font-family:"Yu Gothic UI Light";
}

input,textarea{
	border-radius:20px;
	width:350px;
	height:40px;
	padding:5px;
	color:black;
	font-size:16px;
}
textarea{
	height:100px;
	resize:none;
}
.date_picker{
width:175px;
font-family:"Yu Gothic UI Light";
padding:0;
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
input{
	color:white;
	background-color:#333;
	width:288px;
	height:40px;
	font-family:"Yu Gothic UI Light";
	font-size:16px;
	font-weight:bold;
	margin-left:2px;
	border:thin;
	border-radius:10px;
}
body{
	
	font-family:"Yu Gothic UI Light";
}
select{
	background:#333;
	width:300px;
	height:50px;
	font-family:"Yu Gothic UI Light";
	font-weight:bold;
	color:white;
	font-size:16px;
	border-radius:10px;
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
.btn_sc{
	background:#41f471;
	height:40px;
	color:black;
	margin-left:2px;
	width:142px;
	border-radius:20px;
	font-size:15px;
	font-weight:bold;

}
.btn_res{
	background:#f45942;
	height:40px;
	width:142px;
	margin-left:2px;
	border-radius:20px;
	font-size:15px;
	color:black;
	font-weight:bold;

}
.date_picker{
border-radius:20px;
}
</style>
</head>

<body>
<div class="MainNavBar">
<div class="title">
<h1 align="center">ALPHA LIBRARY APPLICATION</h1>
</div>
<%String s= "mailto:alphadev33@gmail.com?subject=Change Password[RIT-ADMIN]&body=PasswordChangeRequest%0D%0A%0D%0A[ENTER YOUR CURRENT PASSWORD HERE]%0D%0A%0D%0A[ENTER YOUR NEW PASSWORD HERE]";%>
</div>
<div>
<form class="form-horizontal" action="ir_portal" method="post">
<fieldset style="border-radius:5px;box-shadow:1px 1px 2px #e24a4a;">

<!-- Form Name -->
<legend style="color:black;text-align:center;font-size:20px;"><b>ISSUE/RETURN</b></legend>
<p></p>
<div style="width:100%;">
<button type="submit" class="btn_sc">Submit</button>
<button type="reset" class="btn_res" id="reset_btn">Reset</button>
</div>
<p></p>
<!-- Select Basic -->
<div class="control-group" style="float:left;">
  <label class="control-label" for="type">Select an Option</label>
  <div class="controls">
    <select name="type" class="selectclass" id="selectclass" onchange="HelloFunction()">
      <option value="0">Issue</option>
      <option value="1">Return</option>
      <option value="2">Renewal</option>
    </select>
  </div>
</div>
<p></p>
<!-- Text input-->
<div class="control-group2" id="hello" style="float:left;padding-left:220px;">
  <label class="control-label" for="sid">Student ID</label>
  <div class="controls">
    <input id="sid" name="sid" type="text" placeholder="" class="input-xlarge" required="" value="1MS1" maxlength=10>
    
  </div>
</div>
<!-- Text input-->
<div class="control-group" style="float:right;" id="hello2">
  <label class="control-label" for="bid">Book ID</label>
  <div class="controls">
    <input id="bid" name="bid" type="text" placeholder="Enter Valid Book ID" class="input-xlarge" required="" onkeypress="return event.charCode >= 48 && event.charCode <=57;" maxlength=7>
    
  </div>
</div>
<p></p>
</fieldset>
</form>
</div>

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
	<button onclick="Hello()"><div>
<span>VIEW RECORDS</span>
<img alt="" src="images/db.png" style="height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;">
</div>
</button></td>
<td></td>
<td style="border-right:1px solid;
	border-left:1px solid;
	border-color:white;">
	<button onclick="records_books()">
<div>
<span>BOOKS TO BE RETURNED</span>
</div>
</button></td>
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
<div id="id01" class="modal">
<span style="color:white;font-size:40px;float:right;cursor:default;" onclick="this.parentElement.style.display='none';" title="Close">&times;</span>
<div id="demo3" class="modal-content animate">
    <form class="form_records" action="record_access.jsp" method="get" style="background:#333;border-radius:10px;">

<div class="control-group" style="float:left;">
  <label class="control-label" for="id">From Date</label>
  <div class="controls">
   <input id="id" name="id" type="date" class="date_picker" placeholder="DD-MM-YYYY" value="2017-07-01"required="" style="background:white;color:black;">
    <button type="submit" class="btn_sc">View Records</button>
  </div>
</div>
</form>
</div>
</div>
<script type="text/javascript">
var modal = document.getElementById('id01');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";}}
</script>
</body>

</html>
    