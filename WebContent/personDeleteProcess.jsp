<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ include file="DBConn.jsp" %>



<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	
	pstmt=conn.prepareStatement("select name from person0105 where id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String name2=rs.getString("name");
		if(name.equals(name2)){
			pstmt=conn.prepareStatement("delete from person0105 where id=?");
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			%>
			<script>
				alert("삭제 완료");
				location.href="personSelect.jsp";
			</script>
			<%
		}else{
			%>
			<script>
			 	alert("사원번호와 이름이 일치하지 않습니다.");
			 	history.back(-1);
			 </script>
			<%
		}
		
	}else{
		%>
		<script>
			alert("사원번호를 잘못 입력하셨습니다.");
			history.back(-1);
		</script>
		<%
	}
	

%>