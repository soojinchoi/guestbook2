<%@page import="com.bit2015.guestbook.dao.GuestbookDao"%>
<%@page import="java.util.List"%>
<%@page import="com.bit2015.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	List<GuestbookVo> list =(List<GuestbookVo>)request.getAttribute("list");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="/guestbook2/gb?a=add" method="post">
	<table border=1 width=500 cellpadding="3px">
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="pass"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="content" cols=66 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
		</tr>
	</table>

	</form>
	<%
		int countTotal = list.size();
		int index = 0;
		for(GuestbookVo vo:list){
	%>
	<br>
	<table width=500 border=1 cellpadding="10px">
		<tr>
			<td align=center>[<%=countTotal-index++ %>]</td>
			<td align=center><%=vo.getName()%></td>
			<td align=right><%=vo.getRegDate()%></td>
			<td align=center><a href="/guestbook2/gb?a=deleteform&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getMessage().replaceAll("\n","<br>")%></td>
		</tr>
	</table>
	<%
		}
	%>
</body>
</html>