<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
  function alert_exception(){
	alert("Incorrect Username/Password");
	window.history.back();
  }
  function sendMail(){
	  
	  
  }
  </script>
</head>
<body>
<%if(request.getParameter("uname").equals("admin")&&request.getParameter("psw").equals("hello123")){
	%>
	<script>
	sendMail()
	</script>
	<%
Cookie cookie=new Cookie("lib_admin","123");
response.addCookie(cookie);
cookie.setMaxAge(60*60*2);
RequestDispatcher rd=request.getRequestDispatcher("lib_admin.jsp");
rd.forward(request, response);
}
else{%>
	<script>
	alert_exception();
	</script>	
<%}
%>

</body>
</html>