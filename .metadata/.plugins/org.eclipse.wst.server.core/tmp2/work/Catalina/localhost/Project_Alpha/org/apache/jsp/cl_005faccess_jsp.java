/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2017-08-23 05:38:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cl_005faccess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function Hello(){\r\n");
      out.write("\tdocument.getElementById('id01').style.display='block'\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("function records_books(){\r\n");
      out.write("\tvar x=confirm(\"You are about to be redirected to XAMPP phpMyAdmin Page\");\r\n");
      out.write("\tif(x==true){\r\n");
      out.write("\t\talert(\"Go to Bookmarked-Queries section and select \\\"Book Records\\\"\\nThen Click GO\");\r\n");
      out.write("\t\tMyWindow=window.open('http://localhost:808/phpmyadmin/tbl_sql.php?db=project+alpha&table=sdb','MyWindow',width=600,height=300);\r\n");
      out.write("\t\twin.focus();\r\n");
      out.write("\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write("function HelloFunction(){\r\n");
      out.write("\tvar x=document.getElementById('hello');\r\n");
      out.write("\tvar s=document.getElementById('selectclass');\r\n");
      out.write("\tvar r=document.getElementById('reset_btn');\r\n");
      out.write("\tvar b=document.getElementById('hello2');\r\n");
      out.write("\tif(s.value==\"1\"||s.value==\"2\"){\r\n");
      out.write("\tx.style.display='none';\r\n");
      out.write("\tr.style.display='none';\r\n");
      out.write("\tb.style.cssFloat='left';\r\n");
      out.write("\tb.style.paddingLeft='220px';\r\n");
      out.write("\t}\r\n");
      out.write("\telse{\r\n");
      out.write("\tx.style.display='inherit';\r\n");
      out.write("\tr.style.display='inline';\r\n");
      out.write("\tb.style.paddingLeft='0';\r\n");
      out.write("\tb.style.cssFloat='right';\r\n");
      out.write("\t}\r\n");
      out.write("\t}\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\">\r\n");
      out.write("<title>Issue/Return Portal</title>\r\n");
      out.write("<link rel=\"icon\" href=\"images/issue.png\" />\r\n");
      out.write("<style>\r\n");
      out.write("body{\r\n");
      out.write("padding:0;\r\n");
      out.write("margin:0;\r\n");
      out.write("overflow-x:hidden;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".bottom_fix{\r\n");
      out.write("\tmin-width:100%; /* Set a default minimum width */\r\n");
      out.write("    margin-left: -50%; /* Divide value of min-width by 2 */\r\n");
      out.write("    background-color: #333; /* Black background color */\r\n");
      out.write("    color: #fff; /* White text color */\r\n");
      out.write("    text-align: left; /* Centered text */\r\n");
      out.write("    border-radius: 2px; /* Rounded borders */\r\n");
      out.write("    font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("    position: fixed; /* Sit on top of the screen */\r\n");
      out.write("    z-index: 1; /* Add a z-index if needed */\r\n");
      out.write("    left: 50%; /* Center the snackbar */\r\n");
      out.write("    bottom: 0px; /* 30px from the bottom */\r\n");
      out.write("    height:40px;\r\n");
      out.write("}\r\n");
      out.write(".modal {\r\n");
      out.write("    display: none; /* Hidden by default */\r\n");
      out.write("    position: fixed; /* Stay in place */\r\n");
      out.write("    z-index: 1; /* Sit on top */\r\n");
      out.write("    left: 0;\r\n");
      out.write("    top: 80%;\r\n");
      out.write("    font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("    width: 100%; /* Full width */\r\n");
      out.write("    height: 20%; /* Full height */\r\n");
      out.write("    overflow:hidden; /* Enable scroll if needed */\r\n");
      out.write("    background-color: rgb(0,0,0); /* Fallback color */\r\n");
      out.write("    background-color: rgba(0,0,0,0.85); /* Black w/ opacity */\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("    border-radius:10px;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Modal Content/Box */\r\n");
      out.write(".modal-content {\r\n");
      out.write("    background-color: #fefefe;\r\n");
      out.write("    margin: 10% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */\r\n");
      out.write("    width: 35%; \r\n");
      out.write("    margin-top:10px;\r\n");
      out.write("    border-radius:10px;\r\n");
      out.write("    color:white;\r\n");
      out.write("}\r\n");
      out.write(".bottom_fix1{\r\n");
      out.write("\theight:100%;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("\tpadding:0;\t\r\n");
      out.write("}\r\n");
      out.write("td{\r\n");
      out.write("\twidth:20%;\r\n");
      out.write("\tfont-size:20px;\r\n");
      out.write("\tborder-radius:5px;\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("}\r\n");
      out.write("a{\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("input,textarea{\r\n");
      out.write("\tborder-radius:20px;\r\n");
      out.write("\twidth:350px;\r\n");
      out.write("\theight:40px;\r\n");
      out.write("\tpadding:5px;\r\n");
      out.write("\tcolor:black;\r\n");
      out.write("\tfont-size:16px;\r\n");
      out.write("}\r\n");
      out.write("textarea{\r\n");
      out.write("\theight:100px;\r\n");
      out.write("\tresize:none;\r\n");
      out.write("}\r\n");
      out.write(".date_picker{\r\n");
      out.write("width:175px;\r\n");
      out.write("font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("padding:0;\r\n");
      out.write("}\r\n");
      out.write(".help-block{\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("}\r\n");
      out.write("legend{\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("}\r\n");
      out.write(".btn1{\r\n");
      out.write("\tbackground:#333;\r\n");
      out.write("\theight:50px;\r\n");
      out.write("\tfont-size:18px;\r\n");
      out.write("\tborder-radius:20px;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tbox-shadow:1px 3px 2px #e24a4a;\r\n");
      out.write("}\r\n");
      out.write(".btn_sc{\r\n");
      out.write("\tbackground:#41f471;\r\n");
      out.write("\theight:40px;\r\n");
      out.write("\tcolor:black;\r\n");
      out.write("\tmargin-left:2px;\r\n");
      out.write("\twidth:173px;\r\n");
      out.write("\tborder-radius:20px;\r\n");
      out.write("\tfont-size:15px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("button{\r\n");
      out.write("\tbackground:#333;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\theight:100%;\r\n");
      out.write("\tborder-radius:5px;\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("\tfont-size:22px;\r\n");
      out.write("\tborder:none;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("input{\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tbackground-color:#333;\r\n");
      out.write("\twidth:288px;\r\n");
      out.write("\theight:40px;\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("\tfont-size:16px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\tmargin-left:2px;\r\n");
      out.write("\tborder:thin;\r\n");
      out.write("\tborder-radius:10px;\r\n");
      out.write("}\r\n");
      out.write("body{\r\n");
      out.write("\t\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("}\r\n");
      out.write("select{\r\n");
      out.write("\tbackground:#333;\r\n");
      out.write("\twidth:300px;\r\n");
      out.write("\theight:50px;\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\tfont-size:16px;\r\n");
      out.write("\tborder-radius:10px;\r\n");
      out.write("}\r\n");
      out.write(".MainNavBar{\r\n");
      out.write("\tbackground-color:#333;\r\n");
      out.write("\theight:60px;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\ttop:-1px;\r\n");
      out.write("\tpadding:0;\r\n");
      out.write("\tmargin:0;\r\n");
      out.write("\tposition:relative;\r\n");
      out.write("\ttop:-20px;\r\n");
      out.write("\tbox-shadow:1px 4px #e24a4a;\r\n");
      out.write("\tborder-radius:0 0 50px 50px;\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("}\r\n");
      out.write(".title {\r\n");
      out.write("\tmargin: 1px;\r\n");
      out.write("\theight:55px;\r\n");
      out.write("\tfont-family: \"Yu Gothic UI Light\";\r\n");
      out.write("\tfont-weight: 700;\r\n");
      out.write("\tfont-style: normal;\r\n");
      out.write("\ttext-transform: none;\r\n");
      out.write("\tfont-variant: small-caps;\r\n");
      out.write("\tline-height: normal;\r\n");
      out.write("\tbackground-color: #333;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("\tborder-radius:0 0 50px 50px;\r\n");
      out.write("}\r\n");
      out.write(".btn_sc{\r\n");
      out.write("\tbackground:#41f471;\r\n");
      out.write("\theight:40px;\r\n");
      out.write("\tcolor:black;\r\n");
      out.write("\tmargin-left:2px;\r\n");
      out.write("\twidth:142px;\r\n");
      out.write("\tborder-radius:20px;\r\n");
      out.write("\tfont-size:15px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".btn_res{\r\n");
      out.write("\tbackground:#f45942;\r\n");
      out.write("\theight:40px;\r\n");
      out.write("\twidth:142px;\r\n");
      out.write("\tmargin-left:2px;\r\n");
      out.write("\tborder-radius:20px;\r\n");
      out.write("\tfont-size:15px;\r\n");
      out.write("\tcolor:black;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write(".date_picker{\r\n");
      out.write("border-radius:20px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"MainNavBar\">\r\n");
      out.write("<div class=\"title\">\r\n");
      out.write("<h1 align=\"center\">ALPHA LIBRARY APPLICATION</h1>\r\n");
      out.write("</div>\r\n");
String s= "mailto:alphadev33@gmail.com?subject=Change Password[RIT-ADMIN]&body=PasswordChangeRequest%0D%0A%0D%0A[ENTER YOUR CURRENT PASSWORD HERE]%0D%0A%0D%0A[ENTER YOUR NEW PASSWORD HERE]";
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("<div>\r\n");
      out.write("<form class=\"form-horizontal\" action=\"ir_portal\" method=\"post\">\r\n");
      out.write("<fieldset style=\"border-radius:5px;box-shadow:1px 1px 2px #e24a4a;\">\r\n");
      out.write("\r\n");
      out.write("<!-- Form Name -->\r\n");
      out.write("<legend style=\"color:black;text-align:center;font-size:20px;\"><b>ISSUE/RETURN</b></legend>\r\n");
      out.write("<p></p>\r\n");
      out.write("<div style=\"width:100%;\">\r\n");
      out.write("<button type=\"submit\" class=\"btn_sc\">Submit</button>\r\n");
      out.write("<button type=\"reset\" class=\"btn_res\" id=\"reset_btn\">Reset</button>\r\n");
      out.write("</div>\r\n");
      out.write("<p></p>\r\n");
      out.write("<!-- Select Basic -->\r\n");
      out.write("<div class=\"control-group\" style=\"float:left;\">\r\n");
      out.write("  <label class=\"control-label\" for=\"type\">Select an Option</label>\r\n");
      out.write("  <div class=\"controls\">\r\n");
      out.write("    <select name=\"type\" class=\"selectclass\" id=\"selectclass\" onchange=\"HelloFunction()\">\r\n");
      out.write("      <option value=\"0\">Issue</option>\r\n");
      out.write("      <option value=\"1\">Return</option>\r\n");
      out.write("      <option value=\"2\">Renewal</option>\r\n");
      out.write("    </select>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<p></p>\r\n");
      out.write("<!-- Text input-->\r\n");
      out.write("<div class=\"control-group2\" id=\"hello\" style=\"float:left;padding-left:220px;\">\r\n");
      out.write("  <label class=\"control-label\" for=\"sid\">Student ID</label>\r\n");
      out.write("  <div class=\"controls\">\r\n");
      out.write("    <input id=\"sid\" name=\"sid\" type=\"text\" placeholder=\"\" class=\"input-xlarge\" required=\"\" value=\"1MS1\" maxlength=10>\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<!-- Text input-->\r\n");
      out.write("<div class=\"control-group\" style=\"float:right;\" id=\"hello2\">\r\n");
      out.write("  <label class=\"control-label\" for=\"bid\">Book ID</label>\r\n");
      out.write("  <div class=\"controls\">\r\n");
      out.write("    <input id=\"bid\" name=\"bid\" type=\"text\" placeholder=\"Enter Valid Book ID\" class=\"input-xlarge\" required=\"\" onkeypress=\"return event.charCode >= 48 && event.charCode <=57;\" maxlength=7>\r\n");
      out.write("    \r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("<p></p>\r\n");
      out.write("</fieldset>\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"bottom_fix\">\r\n");
      out.write("<table class=\"bottom_fix1\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td style=\"border-right:1px solid;\r\n");
      out.write("\tborder-left:1px solid;\r\n");
      out.write("\tborder-color:white;\">\r\n");
      out.write("<a href=\"default.jsp\"><button>\r\n");
      out.write("<div>\r\n");
      out.write("<span>HOME</span>\r\n");
      out.write("<img alt=\"\" src=\"images/home.png\" style=\"height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;\">\r\n");
      out.write("</div>\r\n");
      out.write("</button></a></td>\r\n");
      out.write("<td style=\"border-right:1px solid;\r\n");
      out.write("\tborder-left:1px solid;\r\n");
      out.write("\tborder-color:white;\">\r\n");
      out.write("\t<button onclick=\"Hello()\"><div>\r\n");
      out.write("<span>VIEW RECORDS</span>\r\n");
      out.write("<img alt=\"\" src=\"images/db.png\" style=\"height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;\">\r\n");
      out.write("</div>\r\n");
      out.write("</button></td>\r\n");
      out.write("<td></td>\r\n");
      out.write("<td style=\"border-right:1px solid;\r\n");
      out.write("\tborder-left:1px solid;\r\n");
      out.write("\tborder-color:white;\">\r\n");
      out.write("\t<button onclick=\"records_books()\">\r\n");
      out.write("<div>\r\n");
      out.write("<span>BOOKS TO BE RETURNED</span>\r\n");
      out.write("</div>\r\n");
      out.write("</button></td>\r\n");
      out.write("<td style=\"border-right:1px solid;\r\n");
      out.write("\tborder-left:1px solid;\r\n");
      out.write("\tborder-color:white;\">\r\n");
      out.write("<a href=\"s_out.jsp\"><button>\r\n");
      out.write("<div>\r\n");
      out.write("<span>SIGN OUT</span>\r\n");
      out.write("<img alt=\"\" src=\"images/logout.png\" style=\"height:25px;width:25px;vertical-align:center;padding:0;margin-bottom:-2px;\">\r\n");
      out.write("</div>\r\n");
      out.write("</button></a></td>\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("<div id=\"id01\" class=\"modal\">\r\n");
      out.write("<span style=\"color:white;font-size:40px;float:right;cursor:default;\" onclick=\"this.parentElement.style.display='none';\" title=\"Close\">&times;</span>\r\n");
      out.write("<div id=\"demo3\" class=\"modal-content animate\">\r\n");
      out.write("    <form class=\"form_records\" action=\"record_access.jsp\" method=\"get\" style=\"background:#333;border-radius:10px;\">\r\n");
      out.write("\r\n");
      out.write("<div class=\"control-group\" style=\"float:left;\">\r\n");
      out.write("  <label class=\"control-label\" for=\"id\">From Date</label>\r\n");
      out.write("  <div class=\"controls\">\r\n");
      out.write("   <input id=\"id\" name=\"id\" type=\"date\" class=\"date_picker\" placeholder=\"DD-MM-YYYY\" value=\"2017-07-01\"required=\"\" style=\"background:white;color:black;\">\r\n");
      out.write("    <button type=\"submit\" class=\"btn_sc\">View Records</button>\r\n");
      out.write("  </div>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("var modal = document.getElementById('id01');\r\n");
      out.write("window.onclick = function(event) {\r\n");
      out.write("    if (event.target == modal) {\r\n");
      out.write("        modal.style.display = \"none\";}}\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("    ");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
