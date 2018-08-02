<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="Content-Type">
<title>Search Results</title>
<link rel="icon" href="images/search.png" />
<script type="text/javascript">
function alert_exception(){
	alert("Database Connection Unsuccessful\nCheck Your XAMPP Connection and Try Again");
	window.history.back();
}
function fnExcelReport()
{
	var save_file=confirm("Press OK to save this table as Excel Spreadsheet(.xls)");
	if(save_file==true){
      var tab_text="<table border='2px'>";
      var textRange; 
      var j=0;
      tab = document.getElementById('table_search');

      for(j = 0 ; j < tab.rows.length ; j++) 
      {     
            tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
      }

      tab_text=tab_text+"</table>";


      var ua = window.navigator.userAgent;
      var msie = ua.indexOf("MSIE "); 

      if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
      {
         txtArea1.document.open("txt/html","replace");
         txtArea1.document.write(tab_text);
         txtArea1.document.close();
         txtArea1.focus(); 
         sa=txtArea1.document.execCommand("SaveAs",true,"Global View Task.xls");
      }  
      else
      	sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
      	return (sa);
	}
	else{
		alert("You Pressed Cancel");
	}
}
</script>
<style>
.title {
	margin: 1px;
	height:50px;
	font-family: "Yu Gothic UI Light";
	font-weight: 700;
	font-style: normal;
	text-transform: none;
	font-variant: small-caps;
	line-height: normal;
	background-color: #333;
	color:white;
	border-radius:20px;
}
body{
	padding:0;
	margin:10px;
	background-image:/images/background_1.jpg;
}
p{
margin-left:20px;
padding-left:20px;
}
.search_results{
background-color:#333;
text-align:center;
height:50px;
border-radius:20px;
vertical-align:middle;
box-shadow:1px 3px 2px #e24a4a;
}
.search_results h2{
	
}
.container{
background-color:#333333;
font-family:Yu Gothic UI Light;
color:white;
text-align:center;
height:300px;
font-size:19px;
font-weight:500;
border-radius:20px;
box-shadow:1px 3px 2px #e24a4a;
}
table{
	background:#333;
	width:100%;
	font-family:"Yu Gothic UI Light";
	color:white;
	border-radius:10px;
	margin-left:3px;
	margin-right:3px;
	box-shadow:1px 3px 2px #e24a4a;
}
table tr{
	height:40px;
	padding-top:5px;
}
table th:hover{
	background-color:white;
	color:#333;
	font-weight:bolder;
	cursor:pointer;
}

table th{
	width:16%;
	border-left: 1px solid;
	border-right: 1px solid; 
	border-bottom:1px solid ;
	border-color:white;
	border-radius:5px;
	font-size:19px;
	box-shadow:1px 3px 2px #e24a4a;
}
table td{
	text-align:center;
	border-left: 1px solid;
	border-right: 1px solid;
	border-bottom:1px solid;
	border-color:white;
	border-radius:5px;
	height:60px;
	font-weight:550;
}
button{
height:50px;
text-align:center;
border-radius:20px;
width:100%;
font-family:Yu Gothic UI Light;
color:white;
font-size:18px;
background-color:#333;
}
button:hover{
font-size:20px;
cursor:pointer;
}
.export_button{
box-shadow:1px 3px 2px #e24a4a;
}
</style>
</head>
<body>
<div class="title">
<h1 align="center">ALPHA LIBRARY APPLICATION</h1>
<div class="search_results">
<h2>Search Results(Available Books)</h2>
</div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<hr>
<div class="table_results">
<p></p>
<button class="export_button" id="btnExport" onclick="fnExcelReport();">EXPORT AS SPREADSHEET(.xls)</button>
<p></p>
<p></p>
<table class="search" id="table_search">
<tr>
<th>BOOK ID</th>
<th>BOOK NAME</th>
<th>AUTHOR</th>
<th>PUBLISHER</th>
<th>CATEGORY</th>
<th>PUBLISHED YEAR</th>

</tr>
<%@ page import="java.time.LocalDateTime" %>
<%System.out.println("SEARCH RESULTS PAGE ACCESSED AT:"+LocalDateTime.now()); %>
<%@ page import="java.sql.*" %>
<%
	String url = "jdbc:mysql://localhost:3306/"; 
	String dbName = "Project Alpha"; 
	String driver = "com.mysql.jdbc.Driver"; 
	String user = "root";  
	String password = ""; 
	Statement pstmt;
	String sql="";

	try { 
	        Class.forName(driver).newInstance(); 
	        Connection conn = DriverManager.getConnection(url+dbName, user, password);
	        String s=request.getParameter("bookSearch");
	        if(!request.getParameter("Text1").equals("")){
		    	switch(s){
		    	case "id":	
		    		sql += "SELECT * FROM Books where ID="+request.getParameter("Text1")+" ORDER BY Books.name ASC;";
		    		break;
		    	case "name":	
		    		sql += "SELECT * FROM Books WHERE name like '%"+request.getParameter("Text1")+"%' ORDER BY Books.name ASC;";
					break;
		    	case "pubyear":	
		    		sql += "SELECT * FROM Books where pubyear like '%"+request.getParameter("Text1")+"%' ORDER BY Books.name ASC;";
					break;
		    	case "publisher":	
		    		sql += "SELECT * FROM Books where publisher like '%"+request.getParameter("Text1")+"%' ORDER BY Books.name ASC;";
					break;
		    	case "category":	
		    		sql += "SELECT * FROM Books where category like '%"+request.getParameter("Text1")+"%' ORDER BY Books.name ASC;";
					break;
		    	case "author":	
		    		sql += "SELECT * FROM Books where author like '%"+request.getParameter("Text1")+"%' ORDER BY Books.name ASC;";
					break;
				default:	
					sql += "SELECT * FROM Books ORDER BY Books.name ASC";
		    	}
			}
	        else
	        	sql+="SELECT * FROM Books ORDER BY Books.name ASC";
	        
	        pstmt = conn.createStatement();
	        ResultSet rs=pstmt.executeQuery(sql);
            String f1,f2,f3,f4,f5,f6,f7,f8;
            
	        while(rs.next()) 
	        {
	        	f8=rs.getString(8);
	        	f1=rs.getString(1);
	        	if(Integer.parseInt(f8)!=1){
	        		f1=f1+"(Not Avail)";
	        	}
				f2=rs.getString(2);
				f3=rs.getString(3);
				f4=rs.getString(4);
				f5=rs.getString(5);
				f6=rs.getString(6);
				f7=rs.getString(7);
				%>
				<tr><td><a href="<%=f7%>" style="color:white;" onClick="MyWindow=window.open('<%=f7%>','MyWindow',width='200',height='200'); return false;"><%=f1%></a></td>
				<td><%=f2 %></td>
				<td><%=f3 %></td>
				<td><%=f4 %></td>
				<td><%=f5 %></td>
				<td><%=f6%></td>
				</tr>
				
	       <% }       
	}
	catch(SQLException e){
		%>
		<script>
		alert_exception();
		</script>
		<% 
} 
%>
</table>
</div>
</body>

</html>
<% out.close(); %>
