<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<style type="text/css">
	body{
		font_size: 12px;
	}
</style>
</head>
<body>
-ȸ������-
	<form action="${cpath}/insert.do" method="post">
		<table border="1">
			<tr>
				<td>�̸�</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td><input type="text" name="addr" size="50">
				<input type="button" value="�����浵���ϱ�"></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="����">
				<input type="reset" value="���"></td>
			</tr>
		</table>
	</form>
</body>
</html>