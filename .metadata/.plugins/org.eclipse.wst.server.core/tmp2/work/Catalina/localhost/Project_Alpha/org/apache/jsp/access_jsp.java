/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.36
 * Generated at: 2017-08-21 16:01:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class access_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\">\r\n");
      out.write("<title>Login</title>\r\n");
      out.write("<link rel=\"icon\" href=\"images/key.png\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\"/>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function alert_root(){\r\n");
      out.write("\talert(\"Contact Admin\");\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<style>\r\n");
      out.write("body{\r\n");
      out.write("\tfont-family:\"Yu Gothic UI Light\";\r\n");
      out.write("\tbackground:#333;\r\n");
      out.write("}\r\n");
      out.write(".login_input {\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    padding: 12px 20px;\r\n");
      out.write("    margin: 8px 0;\r\n");
      out.write("    display: inline-block;\r\n");
      out.write("    border: 2px solid #ccc;\r\n");
      out.write("    box-sizing: border-box;\r\n");
      out.write("    border-radius:10px;\r\n");
      out.write("    box-shadow:1px 1px 2px #e24a4a;\r\n");
      out.write("}\r\n");
      out.write(".submit_button {\r\n");
      out.write("    background-color: #4285f4;\r\n");
      out.write("    color: white;\r\n");
      out.write("    padding: 14px 20px;\r\n");
      out.write("    margin: 8px 0;\r\n");
      out.write("    border: none;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("    width: 100%;\r\n");
      out.write("    border-radius:10px;\r\n");
      out.write("    font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("    font-size:18px;\r\n");
      out.write("    font-weight:700;\r\n");
      out.write("    box-shadow:1px 1px 2px #e24a4a;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container {\r\n");
      out.write("    opacity: 1;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".cancelbtn {\r\n");
      out.write("\tfloat:right;\r\n");
      out.write("    width:100%;\r\n");
      out.write("    margin:10% auto 10% 0;\r\n");
      out.write("    padding: 10px 18px;\r\n");
      out.write("    text-align:center;\r\n");
      out.write("    font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("    background-color: #e84c3d;\r\n");
      out.write("    border-radius:10px;\r\n");
      out.write("    font-size:16px;\r\n");
      out.write("    position:relative;\r\n");
      out.write("    top:-30px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Center the image and position the close button */\r\n");
      out.write(".imgcontainer {\r\n");
      out.write("    text-align: center;\r\n");
      out.write("    margin: 24px 0 12px 0;\r\n");
      out.write("    position: relative;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("img.avatar {\r\n");
      out.write("    width: 40%;\r\n");
      out.write("    border-radius: 50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".container {\r\n");
      out.write("    padding: 16px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("span.psw {\r\n");
      out.write("    float: right;\r\n");
      out.write("    padding-top: 16px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* The Modal (background) */\r\n");
      out.write(".modal {\r\n");
      out.write("    display:inline; /* Hidden by default */\r\n");
      out.write("    position: fixed; /* Stay in place */\r\n");
      out.write("    z-index: 1; /* Sit on top */\r\n");
      out.write("    left: 0;\r\n");
      out.write("    top: 0;\r\n");
      out.write("    font-family:\"Yu Gothic UI Light\";\r\n");
      out.write("    width: 100%; /* Full width */\r\n");
      out.write("    height: 100%; /* Full height */\r\n");
      out.write("    overflow:hidden; /* Enable scroll if needed */\r\n");
      out.write("    background-color: rgb(0,0,0); /* Fallback color */\r\n");
      out.write("    background-color: rgba(0,0,0,0.85); /* Black w/ opacity */\r\n");
      out.write("    padding: 0px;\r\n");
      out.write("    border-radius:15px;\r\n");
      out.write("    \r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("/* Modal Content/Box */\r\n");
      out.write(".modal-content {\r\n");
      out.write("    background-color: #fefefe;\r\n");
      out.write("    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */\r\n");
      out.write("    border: 1px solid #888;\r\n");
      out.write("    width: 30%; \r\n");
      out.write("    border-radius:15px;\r\n");
      out.write("}\r\n");
      out.write(".close {\r\n");
      out.write("    position: absolute;\r\n");
      out.write("    right: 25px;\r\n");
      out.write("    top: 0;\r\n");
      out.write("    color: #000;\r\n");
      out.write("    font-size: 35px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".close:hover,\r\n");
      out.write(".close:focus {\r\n");
      out.write("    color: red;\r\n");
      out.write("    cursor: pointer;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("/* Add Zoom Animation */\r\n");
      out.write(".animate {\r\n");
      out.write("    -webkit-animation: animatezoom 0.8s;\r\n");
      out.write("    animation: animatezoom 0.8s\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@-webkit-keyframes animatezoom {\r\n");
      out.write("    from {-webkit-transform: scale(0)} \r\n");
      out.write("    to {-webkit-transform: scale(1)}\r\n");
      out.write("}\r\n");
      out.write("    \r\n");
      out.write("@keyframes animatezoom {\r\n");
      out.write("    from {transform: scale(0)} \r\n");
      out.write("    to {transform: scale(1)}\r\n");
      out.write("}\r\n");
      out.write("@media screen and (max-width: 300px) {\r\n");
      out.write("    span.psw {\r\n");
      out.write("       display: block;\r\n");
      out.write("       float: none;\r\n");
      out.write("    }\r\n");
      out.write("    .cancelbtn {\r\n");
      out.write("       width: 100%;\r\n");
      out.write("    }\r\n");
      out.write("}\r\n");
      out.write(".title_login{\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("\tfont-size:20px;\r\n");
      out.write("\tmargin-bottom:50px;\r\n");
      out.write("\tfont-weight:bold;\r\n");
      out.write("\twidth:100%;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"id01\" class=\"w3-container w3-center w3-animate-bottom\">\r\n");
      out.write("  \r\n");
      out.write("  <form class=\"modal-content animate\" action=\"cl_psw_validate.jsp\" method=\"post\">\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("    <p class=\"title_login\">Issue/Return Portal</p>\r\n");
      out.write("    \r\n");
      out.write("      <label><b>Username</b></label>\r\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" class=\"login_input\" name=\"uname\" required />\r\n");
      out.write("      <label><b>Password</b></label>\r\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" class=\"login_input\" name=\"psw\" required /> \r\n");
      out.write("      <button type=\"submit\" class=\"submit_button\">Login</button>\r\n");
      out.write("      \t\r\n");
      out.write("      <a onclick=\"alert_root()\" style=\"cursor:pointer;font-weight:800;\" >Forgot Password?</a>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("      \t<button type=\"button\" onclick=\"window.history.back();\" class=\"cancelbtn\">Cancel</button>\r\n");
      out.write("    \t\r\n");
      out.write("  </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
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
