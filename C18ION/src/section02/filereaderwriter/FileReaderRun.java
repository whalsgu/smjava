/*
 * FileReader, FileWriter
 * - 문자 기반 스트림
 * - 그림, 오디오, 비디오와 같은 파일을 읽을 수가 없다.(바이트 기반)
 */
package section02.filereaderwriter;

import java.io.FileReader;

public class FileReaderRun {

	public static void main(String[] args) {
		try {
			FileReader filereader = new FileReader("D:/Temp/file-1.txt");
			char[] charbuff = new char[125];
			
			while(true) {
				int readlen = filereader.read(charbuff);
				if(readlen < 0) {
					break;
				}
				
				String str = new String(charbuff, 0, readlen);
				System.out.print(str);
			}
			
			filereader.close();
		}
		catch(Exception e) {
			
		}

	}

}
