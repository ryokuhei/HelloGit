<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<!-- DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<link rel="stylesheet" href="./CSS/login.css" type="text/css">
<title>���O�C�����</title>
</head>
<body>
	<form action="LoginServlet" method="POST">


		<h2 align="center">���O�C��ID��PASSWORD����͂��Ă�������</h2>
		<br> <br>
		<table align="center" class="input">
			<tr>
				<td class="input">ID</td>
				<td class="input"><input type="text" name="ID" placeholder="ID�����" maxlength="32" size="36"></td>
			</tr>
			<tr>
				<td class="input">PASSWORD</td>
				<td class="input"><input type="password" name="PASSWORD" maxlength="32"
					size="36"></td>
			</tr>
		</table>
		<br>
		<table align="center">
			<tr>
				<td><input type="submit" name="ACTION" value="���O�C��"><input
					type="reset" value="�N���A"></td>
			</tr>
		</table>
	</form>
</body>
</html>