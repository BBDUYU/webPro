<%@page import="java.sql.SQLException"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.util.DBConn"%> 
<%@page import="org.doit.domain.EmpVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- ex04_ok.jsp -->
<%
    //jsp 스크립트 - (스크립트릿) : 자바 코딩 
    int deptno = Integer.parseInt(request.getParameter("deptno"));

	Connection conn = null;
	PreparedStatement pstmt = null; 
	ResultSet rs = null;
	ArrayList<EmpVO> list = null;
	EmpVO vo = null;
	
	try { 
		conn = DBConn.getConnection();			
		// 3. CRUD 작업
		list = new ArrayList<EmpVO>();
		
		String sql = "SELECT deptno, empno, ename "
				+ " FROM emp "
				+ " WHERE deptno = ? ";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, deptno);
		rs = pstmt.executeQuery(); 
		
		while ( rs.next() ) {
			int empno = rs.getInt("empno");
			String ename = rs.getString("ename"); 
			
			out.write( deptno+" " + empno + " " + ename+"<br>");
			
			//list.add(vo); 
		} // while 
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally { 
		try {
			rs.close();
			pstmt.close();
			DBConn.close();
		} catch (SQLException e) { 
			e.printStackTrace();
		}
	} 
	
	System.out.println(" end ");
%>    
</body>
</html>








