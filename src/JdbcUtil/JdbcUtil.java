package JdbcUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {

	public static void close(Connection conn) throws SQLException{
		if(conn!=null)conn.close();
	}
	
	public static void close(PreparedStatement pstmt) throws SQLException{
		if(pstmt!=null)pstmt.close();
	}
	
	public static void close(ResultSet rs) throws SQLException{
		if(rs!=null)rs.close();
	}
	public static void close(Statement stmt) throws SQLException{
		if(stmt!=null)stmt.close();
	}
}
