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
<h2>인사관리 사원등록 화면</h2>
<form name="form" method="post" action="personInsertProcess.jsp">
<table border=1 id="t1">
<tr>
<th>사원번호</th>
<td><input type="text" name="id" id="id1"></td>
</tr>

<tr>
<th>성명</th>
<td><input type="text" name="name" id="id1"></td>
</tr>

<tr>
<th>소속부서</th>
<td>
	<select name="dept" id="sel1">
		<option value="인사부">인사부</option>
		<option value="기획부">기획부</option>
		<option value="홍보부">홍보부</option>
		<option value="영업부">영업부</option>
		<option value="경리부">경리부</option>
	</select>
</td>
</tr>

<tr>
<th>직급</th>
<td>
	<select name="position" id="sel1">
		<option value="1">1급</option>
		<option value="2">2급</option>
		<option value="3">3급</option>
		<option value="4">4급</option>
	</select>
</td>
</tr>

<tr>
<th>직책</th>
<td><input type="text" name="duty" id="id1"></td>
</tr>

<tr>
<th>연락처</th>
<td><input type="text" name="phone" id="id1"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b1" type="button" value="등록" onclick="check()">
	<input id="b1" type="reset" value="취소">
</td>
</tr>
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