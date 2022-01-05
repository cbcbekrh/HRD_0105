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
<%	
	String id=request.getParameter("id");
	pstmt=conn.prepareStatement("select * from person0412 where id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String name=rs.getString("name");
		String dept=rs.getString("dept");
		String position=rs.getString("position");
		String duty=rs.getString("duty");
		String phone=rs.getString("phone");
	
	
				
%>

<section>
<h2>인사관리 사원수정 화면</h2>
<form name="form" method="post" action="updateProcess.jsp">
<table border=1 id="t1">
<tr>
<th>성명</th>
<td><input type="text" name="name" id="in2" value="<%=name %>"></td>
</tr>

<tr>
<th>사원번호</th>
<td><input type="text" name="id" id="in2" value="<%=id %>">사원번호를 통해 정보를 수정</td>
</tr>

<tr>
<th>소속부서</th>
<td>
	<select name="dept" id="sel1">
		<option value="인사부" <%= dept.equals("인사부") ? "selected" : "" %>>인사부</option>
		<option value="기획부" <%= dept.equals("기획부") ? "selected" : "" %>>기획부</option>
		<option value="홍보부" <%= dept.equals("홍보부") ? "selected" : "" %>>홍보부</option>
		<option value="영업부" <%= dept.equals("영업부") ? "selected" : "" %>>영업부</option>
		<option value="경리부" <%= dept.equals("경리부") ? "selected" : "" %>>경리부</option>
	</select>
</td>
</tr>

<tr>
<th>직급</th>
<td>
	<select name="position" id="sel1">
		<option value="1" <%= position.equals("1") ? "selected" : "" %>>1급</option>
		<option value="2" <%= position.equals("2") ? "selected" : "" %>>2급</option>
		<option value="3" <%= position.equals("3") ? "selected" : "" %>>3급</option>
		<option value="4" <%= position.equals("4") ? "selected" : "" %>>4급</option>
	</select>
</td>
</tr>

<tr>
<th>직책</th>
<td><input type="text" name="duty" id="in2" value="<%=duty %>"></td>
</tr>

<tr>
<th>연락처</th>
<td><input type="text" name="phone" id="in2" value="<%=phone %>"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b1" type="button" value="변경" onclick="check()">
	<input id="b1" type="button" value="취소" onclick="location.href='index.jsp'">
</td>
</tr>
<%} %>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>
function check(){	
	if(document.form.id.value==""){
		alert("사원번호를 입력하세요.");
		document.form.id.focus();
	}else if(document.form.name.value==""){
		alert("이름을 입력하세요.");
		document.form.name.focus();		
	}else if(document.form.duty.value==""){
		alert("직책을 입력하세요.");
		document.form.duty.focus();		
	}else if(document.form.phone.value==""){
		alert("연락처를 입력하세요.");
		document.form.phone.focus();		
	}else{
		document.form.submit();
	}
	
}
</script>
</html>