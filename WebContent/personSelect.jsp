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
<th>no</th>
<th>성명</th>
<th>사번</th>
<th>직급</th>
<th>직책</th>
<th>연락처</th>
<th>소속부서</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select * from person0105");
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
<td><%=no %></td>
<td><%=name %></td>
<td><a href="personUpdate.jsp?id=<%=id %>"><%=id %></a></td>
<td><%=position %></td>
<td><%=duty %></td>
<td><%=phone %></td>
<td><%=dept %></td>
</tr>


<%} %>
</table><hr>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>