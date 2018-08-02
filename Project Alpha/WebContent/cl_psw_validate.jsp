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
  </script>
</head>
<body>
<%@ page import="java.time.LocalDateTime" %>
<%
  
 %>
<% 	 String[] cname={"Srinivas","Vishruth","Sharath"};
	String[] cid={"lib@001","lib@002","lib@003"};
	String[] cpsw={"access1","access2","access3"};
	int i;
	int test=0;
for(i=0;i<3;i++){
if(request.getParameter("uname").equals(cid[i])&&request.getParameter("psw").equals(cpsw[i])){ 
	Cookie[] c=request.getCookies(); 
	 for(int j=0;j<c.length;j++){
		 if(c[j].getName().equals("lib_admin")){
			c[j].setPath(null);
			c[j].setMaxAge(0);
			response.addCookie(c[j]);
			break;
		 }
	 }
	 test=1;
	 Cookie cookie=new Cookie("cl_access",cid[i]);
	 response.addCookie(cookie);
	 cookie.setMaxAge(60*60*2);
RequestDispatcher rd=request.getRequestDispatcher("cl_access.jsp");
rd.forward(request, response);
System.out.println(cid[i]+" LOGGED IN AT:"+LocalDateTime.now());
System.out.println("------------------------------------------------------------------------------------------------------------"); 
break;}
}
%>

	
<%if(test==0){%>
	<script>
	alert_exception();
	</script>
<%
System.out.println("LOG IN FAILURE AT:"+LocalDateTime.now());
System.out.println("------------------------------------------------------------------------------------------------------------");
}

%>

</body>
</html>