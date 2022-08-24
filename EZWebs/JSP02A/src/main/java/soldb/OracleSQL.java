package soldb;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class OracleSQL {

	public static void main(String[] args) {
		OracleSQL hello = new OracleSQL();
		
		// hello.insert("5151", "가수왕", "010-5151-5151");
		// hello.insert("3000", "사미자", "010-3000-3000");
		// hello.update("4321", "가민지", "010-2424-4949");
		// hello.insert("4322", "가민지", "010-2424-4949");
		// hello.select();
		
		// hello.delete("4321");
		hello.select();
	}
	
	public void delete(String hid) {
		String sql = String.format("DELETE FROM hello WHERE hid = '%s'", hid);
		
		Connection conn = null;
		Statement  stmt = null;
		
		System.out.println("[Hello Table DELETE]");
		
		try {
			conn = OracleConnector.getConnection();
			stmt = conn.createStatement();
			
			int success = stmt.executeUpdate(sql);
			if(success > 0) { // 처리한 갯수를 리턴
				System.out.printf("DELETE: succeed(%d)\n", success);
			}
			else {
				System.out.printf("DELETE: failed(%d)\n", success);
			}
		}
		catch(SQLException e) {
			System.out.println("DELETE: SQLException: " + e.toString());
		}
		finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				
			}
			catch(Exception e) {
				System.out.println("DELETE:finally:Exception: " + e.toString());
			}
			
			OracleConnector.closeConnection();
		}
	}
	
	public void update(String hid, String hname, String htel) {
		String sql = String.format("UPDATE hello SET hname='%s', htel='%s' WHERE hid = '%s'", hname, htel, hid);
		
		Connection conn = null;
		Statement  stmt = null;
		
		System.out.println("[Hello Table UPDATE]");
		
		try {
			conn = OracleConnector.getConnection();
			stmt = conn.createStatement();
			int success = stmt.executeUpdate(sql);
			if(success > 0) { // 처리한 갯수를 리턴
				System.out.printf("UPDATE: succeed(%d)\n", success);
			}
			else {
				System.out.printf("UPDATE: failed(%d)\n", success);
			}
		}
		catch(SQLException e) {
			System.out.println("UPDATE: SQLException: " + e.toString());
		}
		finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				
			}
			catch(Exception e) {
				System.out.println("UPDATE:finally:Exception: " + e.toString());
			}
			
			OracleConnector.closeConnection();
		}
	}

	public void insert(String hid, String hname, String htel) {
		String sql = String.format("INSERT INTO hello VALUES('%s', '%s', '%s')", hid, hname, htel);
		
		Connection conn = null;
		Statement  stmt = null;
		
		System.out.println("[Hello Table Insert]");
		
		try {
			conn = OracleConnector.getConnection();
			stmt = conn.createStatement();
			int success = stmt.executeUpdate(sql);
			if(success > 0) { // 처리한 갯수를 리턴
				System.out.printf("INSERT: succeed(%d)\n", success);
			}
			else {
				System.out.println("INSERT: failed!!!");
			}
		}
		catch(SQLException e) {
			System.out.println("INSERT: SQLException: " + e.toString());
		}
		finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				
			}
			catch(Exception e) {
				System.out.println("INSERT: " + e.toString());
			}
			
			OracleConnector.closeConnection();
		}
	}
	
	
	
	public void select() {
		final String sql = "SELECT * FROM hello ORDER BY hid";

		Connection conn = null;
		Statement  stmt = null;
		ResultSet  rset = null;
		
		System.out.println("[Hello Table Select]");
		
		try {
			conn = OracleConnector.getConnection();
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);

			System.out.printf("[HID] [HNAME]     [HTEL]%n");
			System.out.printf("---------------------------%n");
			
			while(rset.next() ) {
				String hid   = rset.getString(1);
				String hname = rset.getString(2);
				String htel  = rset.getString(3);
				
				System.out.printf("%s  %s  %s %n", hid, hname, htel);
			}
		}
		catch(SQLException e) {
			System.out.println("select: SQLException: " + e.toString());
		}
		finally {
			try {
				if(rset != null) {
					rset.close();
				}
				
				if(stmt != null) {
					stmt.close();
				}
				
			}
			catch(Exception e) {
				System.out.println("select:finally:Exception: " + e.toString());
			}
			
			OracleConnector.closeConnection();
		}
	}
}
