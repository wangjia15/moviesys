/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.5.v20170502
 * Generated at: 2017-11-08 02:41:35 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path + "/";  

      out.write("  \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("  <base href=\"");
      out.print(basePath);
      out.write("\" />  \r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->\r\n");
      out.write("    <title>Bootstrap 101 Template</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap -->\r\n");
      out.write("    <link href='/css/bootstrap.css' rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("     <link href=\"/css/dashboard.css\" rel=\"stylesheet\" type=\"text/css\"/>\r\n");
      out.write("    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->\r\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("    <!--[if lt IE 9]>\r\n");
      out.write("      <script src=\"https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js\"></script>\r\n");
      out.write("      <script src=\"https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js\"></script>\r\n");
      out.write("    <![endif]-->\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("   <nav class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("      <div class=\"container-fluid\">\r\n");
      out.write("        <div class=\"navbar-header\">\r\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\" aria-expanded=\"false\" aria-controls=\"navbar\">\r\n");
      out.write("            <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("            <span class=\"icon-bar\"></span>\r\n");
      out.write("          </button>\r\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">Project name</a>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div id=\"navbar\" class=\"navbar-collapse collapse\">\r\n");
      out.write("          <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("            <li><a href=\"#\">Dashboard</a></li>\r\n");
      out.write("            <li><a href=\"#\">Settings</a></li>\r\n");
      out.write("            <li><a href=\"#\">Profile</a></li>\r\n");
      out.write("            <li><a href=\"#\">Help</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <form class=\"navbar-form navbar-right\">\r\n");
      out.write("            <input type=\"text\" class=\"form-control\" placeholder=\"Search...\">\r\n");
      out.write("          </form>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </nav>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container-fluid\">\r\n");
      out.write("      <div class=\"row\">\r\n");
      out.write("        <div class=\"col-sm-3 col-md-2 sidebar\">\r\n");
      out.write("          <ul class=\"nav nav-sidebar\">\r\n");
      out.write("            <li class=\"active\"><a href=\"#\">Overview <span class=\"sr-only\">(current)</span></a></li>\r\n");
      out.write("            <li><a href=\"#\">Reports</a></li>\r\n");
      out.write("            <li><a href=\"#\">Analytics</a></li>\r\n");
      out.write("            <li><a href=\"#\">Export</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <ul class=\"nav nav-sidebar\">\r\n");
      out.write("            <li><a href=\"\">Nav item</a></li>\r\n");
      out.write("            <li><a href=\"\">Nav item again</a></li>\r\n");
      out.write("            <li><a href=\"\">One more nav</a></li>\r\n");
      out.write("            <li><a href=\"\">Another nav item</a></li>\r\n");
      out.write("            <li><a href=\"\">More navigation</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("          <ul class=\"nav nav-sidebar\">\r\n");
      out.write("            <li><a href=\"\">Nav item again</a></li>\r\n");
      out.write("            <li><a href=\"\">One more nav</a></li>\r\n");
      out.write("            <li><a href=\"\">Another nav item</a></li>\r\n");
      out.write("          </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main\">\r\n");
      out.write("          <h1 class=\"page-header\">Dashboard</h1>\r\n");
      out.write("\r\n");
      out.write("          <div class=\"row placeholders\">\r\n");
      out.write("            <div class=\"col-xs-6 col-sm-3 placeholder\">\r\n");
      out.write("              <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==\" width=\"200\" height=\"200\" class=\"img-responsive\" alt=\"Generic placeholder thumbnail\">\r\n");
      out.write("              <h4>Label</h4>\r\n");
      out.write("              <span class=\"text-muted\">Something else</span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-xs-6 col-sm-3 placeholder\">\r\n");
      out.write("              <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==\" width=\"200\" height=\"200\" class=\"img-responsive\" alt=\"Generic placeholder thumbnail\">\r\n");
      out.write("              <h4>Label</h4>\r\n");
      out.write("              <span class=\"text-muted\">Something else</span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-xs-6 col-sm-3 placeholder\">\r\n");
      out.write("              <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==\" width=\"200\" height=\"200\" class=\"img-responsive\" alt=\"Generic placeholder thumbnail\">\r\n");
      out.write("              <h4>Label</h4>\r\n");
      out.write("              <span class=\"text-muted\">Something else</span>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-xs-6 col-sm-3 placeholder\">\r\n");
      out.write("              <img src=\"data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==\" width=\"200\" height=\"200\" class=\"img-responsive\" alt=\"Generic placeholder thumbnail\">\r\n");
      out.write("              <h4>Label</h4>\r\n");
      out.write("              <span class=\"text-muted\">Something else</span>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("\r\n");
      out.write("          <h2 class=\"sub-header\">Section title</h2>\r\n");
      out.write("          <div class=\"table-responsive\">\r\n");
      out.write("            <table class=\"table table-striped\">\r\n");
      out.write("              <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <th>#</th>\r\n");
      out.write("                  <th>Header</th>\r\n");
      out.write("                  <th>Header</th>\r\n");
      out.write("                  <th>Header</th>\r\n");
      out.write("                  <th>Header</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("              </thead>\r\n");
      out.write("              <tbody>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,001</td>\r\n");
      out.write("                  <td>Lorem</td>\r\n");
      out.write("                  <td>ipsum</td>\r\n");
      out.write("                  <td>dolor</td>\r\n");
      out.write("                  <td>sit</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,002</td>\r\n");
      out.write("                  <td>amet</td>\r\n");
      out.write("                  <td>consectetur</td>\r\n");
      out.write("                  <td>adipiscing</td>\r\n");
      out.write("                  <td>elit</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,003</td>\r\n");
      out.write("                  <td>Integer</td>\r\n");
      out.write("                  <td>nec</td>\r\n");
      out.write("                  <td>odio</td>\r\n");
      out.write("                  <td>Praesent</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,003</td>\r\n");
      out.write("                  <td>libero</td>\r\n");
      out.write("                  <td>Sed</td>\r\n");
      out.write("                  <td>cursus</td>\r\n");
      out.write("                  <td>ante</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,004</td>\r\n");
      out.write("                  <td>dapibus</td>\r\n");
      out.write("                  <td>diam</td>\r\n");
      out.write("                  <td>Sed</td>\r\n");
      out.write("                  <td>nisi</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,005</td>\r\n");
      out.write("                  <td>Nulla</td>\r\n");
      out.write("                  <td>quis</td>\r\n");
      out.write("                  <td>sem</td>\r\n");
      out.write("                  <td>at</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,006</td>\r\n");
      out.write("                  <td>nibh</td>\r\n");
      out.write("                  <td>elementum</td>\r\n");
      out.write("                  <td>imperdiet</td>\r\n");
      out.write("                  <td>Duis</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,007</td>\r\n");
      out.write("                  <td>sagittis</td>\r\n");
      out.write("                  <td>ipsum</td>\r\n");
      out.write("                  <td>Praesent</td>\r\n");
      out.write("                  <td>mauris</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,008</td>\r\n");
      out.write("                  <td>Fusce</td>\r\n");
      out.write("                  <td>nec</td>\r\n");
      out.write("                  <td>tellus</td>\r\n");
      out.write("                  <td>sed</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,009</td>\r\n");
      out.write("                  <td>augue</td>\r\n");
      out.write("                  <td>semper</td>\r\n");
      out.write("                  <td>porta</td>\r\n");
      out.write("                  <td>Mauris</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,010</td>\r\n");
      out.write("                  <td>massa</td>\r\n");
      out.write("                  <td>Vestibulum</td>\r\n");
      out.write("                  <td>lacinia</td>\r\n");
      out.write("                  <td>arcu</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,011</td>\r\n");
      out.write("                  <td>eget</td>\r\n");
      out.write("                  <td>nulla</td>\r\n");
      out.write("                  <td>Class</td>\r\n");
      out.write("                  <td>aptent</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,012</td>\r\n");
      out.write("                  <td>taciti</td>\r\n");
      out.write("                  <td>sociosqu</td>\r\n");
      out.write("                  <td>ad</td>\r\n");
      out.write("                  <td>litora</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,013</td>\r\n");
      out.write("                  <td>torquent</td>\r\n");
      out.write("                  <td>per</td>\r\n");
      out.write("                  <td>conubia</td>\r\n");
      out.write("                  <td>nostra</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,014</td>\r\n");
      out.write("                  <td>per</td>\r\n");
      out.write("                  <td>inceptos</td>\r\n");
      out.write("                  <td>himenaeos</td>\r\n");
      out.write("                  <td>Curabitur</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("                <tr>\r\n");
      out.write("                  <td>1,015</td>\r\n");
      out.write("                  <td>sodales</td>\r\n");
      out.write("                  <td>ligula</td>\r\n");
      out.write("                  <td>in</td>\r\n");
      out.write("                  <td>libero</td>\r\n");
      out.write("                </tr>\r\n");
      out.write("              </tbody>\r\n");
      out.write("            </table>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/jquery-3.2.1.min.js\">\r\n");
      out.write("\t</script>\r\n");
      out.write("    <!-- Include all compiled plugins (below), or include individual files as needed -->\r\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>");
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