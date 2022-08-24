/*
 * METHOD : GET
 * login.html에서 전송된 데이터를 GET 방식으로 받아 출력
 */
package jservlet02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login() {
    }

	public void init(ServletConfig config) throws ServletException {
		System.out.println("[Login] init...");
	}

	public void destroy() {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[Login] doGet()");

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		System.out.println("userid : " + userid);
		System.out.println("userpw : " + userpw);
		
		sendResponse(response.getWriter(), userid, userpw);
	}

	static void sendResponse(PrintWriter out, String userid, String userpw) {
		String html = "<html>";
		
		html += "<body>";
		
		html += "<h2>로그인 성공</h2>";
		html += "<hr>";
		
		html += "<p>아이디: " + userid + "</p>";
		html += "<p>비밀번호: " + userpw + "</p>";
		
		html += "</body>";
		html += "</html>";
		
		out.print(html);
	}
}
