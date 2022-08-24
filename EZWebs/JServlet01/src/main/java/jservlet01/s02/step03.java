/*
 * @WebServlet(...) 애너테이션을 이용하몀 web.xml에서 서블릿 맵핑을 할 필요가 없다.
 */
package jservlet01.s02;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class step03
 */
@WebServlet("/step03")
public class step03 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private int count;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public step03() {
        super();
        // TODO Auto-generated constructor stub
		System.out.println("[step03] step03...");

    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("[step03] init...");

	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("[step03] destroy...");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.printf("[step03] doGet() : count(%d)\n", this.count++);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		System.out.printf("[step03] doPost() : count(%d)\n", this.count++);
	}

}
