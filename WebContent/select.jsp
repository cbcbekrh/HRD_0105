<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="DBConn.jsp" %>
<section>
<h2>직원 정보 조회</h2><hr>
<table border=1 id="t1">
<tr>
<th id="th">no</th>
<th id="th">성명</th>
<th id="th">사번</th>
<th id="th">직급</th>
<th id="th">직책</th>
<th id="th">연락처</th>
<th id="th">소속부서</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select * from person0412");
	rs=pstmt.executeQuery();
	while(rs.next()){
		int id=rs.getInt("id");
		String name=rs.getString("name");
		String dept=rs.getString("dept");
		String position=rs.getString("position");
		String duty=rs.getString("duty");
		String phone=rs.getString("phone");
		no++;
%>

<tr>
<td id="td"><%=no %></td>
<td id="td"><%=name %></td>
<td id="td"><a href="update.jsp?id=<%=id %>"><%=id %></a></td>
<td id="td"><%=position %></td>
<td id="td"><%=duty %></td>
<td id="td"><%=phone %></td>
<td id="td"><%=dept %></td>
</tr>


<%} %>
</table><hr>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>