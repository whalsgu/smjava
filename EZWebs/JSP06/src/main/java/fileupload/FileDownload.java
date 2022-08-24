/*
 * https://commons.apache.org/proper/commons-fileupload/apidocs/org/apache/commons/fileupload/disk/DiskFileItemFactory.html
 */
package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/filednload.do")
public class FileDownload extends HttpServlet {
	final static String UPLOAD_DIRPATH = "D:\\Temp\\upload\\";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FileDownload] GET:/filednload.do");
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FileDownload] POST:/filednload.do");
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String filename = (String)request.getParameter("filename");
		String downfile = UPLOAD_DIRPATH +  filename;
		
		System.out.printf("[FileDownload] filename(%s), downfile(%s)%n", filename, downfile);		
		
		try {
			// PrintWriter out = response.getWriter();
			OutputStream out = response.getOutputStream();
			FileInputStream inFile = new FileInputStream(new File(downfile));
			byte[] readBuff = new byte[8192]; // 8KB  
			while(true) {
				int readlen = inFile.read(readBuff);
				if(readlen < 0) {
					break;
				}
				out.write(readBuff, 0, readlen);
			}
			
			inFile.close();
			out.close();
		}
		catch(FileNotFoundException e) {
			System.out.printf("[FileDownload] FileNotFoundException: downfile(%s)(%s)%n", downfile, e.getMessage());		
		}
	}

}
