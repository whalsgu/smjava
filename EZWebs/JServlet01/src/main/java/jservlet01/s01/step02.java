package jservlet01.s01;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class step02 extends HttpServlet {
	private int count;
	
	@Override
	public void init() throws ServletException {
		System.out.println("[step02] init...");
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException {
		System.out.printf("[step02] doGet() : count(%d)\n", this.count++);
	}

	@Override
	public void destroy() {
		System.out.println("[step02] destroy...");
	}
}
