<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�폜�������</title>
</head>
<body>
	<form action="MenuServlet" method="POST">

		<h2 align="center"><%=request.getAttribute("DELETED")%>���̃f�[�^���폜���܂���
		</h2>

<div align="center">
		<input type="submit" value="���j���[��ʂ�" name="ACTION">
</div>
	</form>
</body>
</html>