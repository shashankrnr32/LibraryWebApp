<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue/Return Portal</title>
<%if(request.getAttribute("type").toString().contains("-")) {%>
<link rel="icon" href="images/error.png" />
<%}else{
	%>
	<link rel="icon" href="images/issue.png" />
<%} %>

<script>
function greenShift(){
	document.getElementById('alert').style.background='#41f447';
	document.getElementById('alert').style.color='#333333';
}

</script>
<style>
.alert {
    padding: 20px;
    background-color: #f44336; /* Red */
    color: white;
    margin-bottom: 15px;
    width:30%;
    margin-left:34%;
    height:25%;
}

/* The close button */
.closebtn {
    margin-left: 15px;
    color: white;
    font-weight: bold;
    float: right;
    font-size: 22px;
    line-height: 20px;
    cursor: pointer;
    transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
    color: black;
}
</style>
</head>
<body>
<jsp:include page="cl_access.jsp"></jsp:include>
<p></p>
<div class="alert" id="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <% if(request.getAttribute("type").toString().equals("-0")){%>
  <h3>Some Error Occurred! Please Try Again</h3>
  <p><%=request.getAttribute("I_ERROR").toString() %>
  <%} %>
  <%if(request.getAttribute("type").toString().equals("0")){ %>
  <h3>Book Issued</h3>
  <p><%=request.getAttribute("R_DATE").toString() %></p>
  <script>
  greenShift();
  </script>
  <%} %>
  <%if(request.getAttribute("type").toString().equals("1")){ %>
  <h3>Book Returned</h3>
  <h5>Collect Fine Amount: <%=request.getAttribute("FINE").toString() %></h5>
  <script>greenShift()</script>
  <%} %>
  <%if(request.getAttribute("type").toString().equals("-1")){%>
  <h3>Some Error Occurred!Please Try Again</h3>
  <p>This Book is Not available for return&nbsp;<span style="font-size:12px;">   (or Invalid Book ID)</span></p>
 	<%} %>
 
 
 <%if(request.getAttribute("type").toString().equals("2")){
	 %>
	 <h3>Book Renewed</h3>
	 <h4>Collect Fine: <%=request.getAttribute("FINE").toString() %></h4>
	 <p><%=request.getAttribute("R_DATE")%>
	 <script >greenShift()</script>
	 <%}
 if(request.getAttribute("type").toString().equals("-2")){%>
		 <h3>Some Error Occurred! Please Try Again</h3>
		 <p>This Book is Not available for renewal&nbsp;<span style="font-size:12px;">   (or Invalid Book ID)</span></p>
	<% }%> 
	 
 
  
</div>
</body>
</html>