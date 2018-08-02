<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.time.LocalDateTime" %>
<%
  Cookie[] c=request.getCookies(); 
 for(int i=0;i<c.length;i++){
	 if(c[i].getName().equals("lib_admin")||c[i].getName().equals("cl_access")){
		c[i].setPath(null);
		c[i].setMaxAge(0);
		response.addCookie(c[i]);
		break;
	 }
 }
 RequestDispatcher rd=request.getRequestDispatcher("default.jsp");
 rd.forward(request, response);
 System.out.println("SIGNED OUT AT:"+LocalDateTime.now());
 System.out.println("------------------------------------------------------------------------------------------------------------"); 
 
 %>
</body>
</html>