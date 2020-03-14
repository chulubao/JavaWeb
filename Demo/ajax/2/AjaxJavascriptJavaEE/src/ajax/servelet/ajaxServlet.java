package ajax.servelet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hello
 */

public class ajaxServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String CONTENT_TYPE = "text/xml; charset=utf-8";
	 public void init() throws ServletException{}
	 public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException
	 {
	  response.setContentType(CONTENT_TYPE);
	  PrintWriter out = response.getWriter();
	  String action = request.getParameter("action");
	  if (("send").equals(action))
	  {
	   StringBuffer sb = new StringBuffer("<type>");
	   sb.append("<type_name>AA</type_name>");
	   sb.append("<type_name>BB</type_name>");
	   sb.append("<type_name>CC</type_name>");
	   sb.append("<type_name>DD</type_name>");
	   sb.append("</type>");
	   out.write(sb.toString());
	   out.close();
	  }
	 }

}
