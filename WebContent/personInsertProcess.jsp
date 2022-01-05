<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	
	pstmt=conn.prepareStatement("insert into person0105 values(?,?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, dept);
	pstmt.setString(4, position);
	pstmt.setString(5, duty);
	pstmt.setString(6, phone);
	pstmt.executeUpdate();
%>

</body>
<script>
	alert("등록 완료");
	location.href="personSelect.jsp";
</script>
</html>