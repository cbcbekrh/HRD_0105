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
<section>
<h2>인사관리 사원정보삭제 화면</h2><hr>
<form name="form" method="post" action="deleteProcess.jsp">
<table border=1 id="t2">
<tr>
<th>성명</th>
<td><input id="in1" type="text" name="name"></td>
</tr>

<tr>
<th>사원번호</th>
<td><input id="in1" type="text" name="id"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b1" type="button" value="삭제" onclick="if(confirm('정말 삭제하시겠습니까?')) form.submit()">
	<input id="b1" type="reset" value="취소" onclick="location.href='index.jsp'">
</td>
</tr>
</table><hr>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>

</script>
</html>