package redirect;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/jtarget1a")
public class JTarget1A extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JTarget1A() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		
		String msg = request.getParameter("msg");
		
		out.println("<html><body>");
		out.println("<h1>sendRedirect('jtarget1a?...')</h1>");
		out.println("<hr>");
		out.println("<p>jstarter1a에서 보내 온 메시지</p>");
		out.println("<p>메시지 : " + msg + "</p>");
		out.println("</body><html>");
		
	}

}
