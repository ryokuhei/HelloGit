<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�]�ƈ��o�^���</title>
</head>
<body>
	<form action="MenuServlet" method="POST">
		<h2 align="center">�o�^�������]�ƈ��̏�����͂��Ă�������</h2>
		<br>
		<div align="left">

			�]�ƈ��R�[�h�F<input type="text" name="CODE" maxlength="4" size="5" required>
			<br> �����F <br> &nbsp;&nbsp;�c��<input type="text"
				name="F_NAME" maxlength="16" size="18" required>&nbsp;&nbsp;���O<input
				type="text" name="L_NAME" maxlength="16" size="18" required>
			<br> ����(�t���K�i)�F <br> &nbsp;&nbsp;�c��(�t���K�i)<input type="text"
				name="F_KANA_NAME" maxlength="24" size="28">&nbsp;&nbsp;���O(�t���K�i)<input
				type="text" name="L_KANA_NAME" maxlength="24" size="28"> <br>

			���ʁF<select name="SEX">
				<option value="blank"></option>
				<option value="�j��">�j��</option>
				<option value="����">����</option>
			</select> <br> ���N�����F <input type="text" name="B_YEAR" size="5"
				maxlength="4">�N <input type="text" name="B_MONTH" size="5"
				maxlength="2">�� <input type="text" name="B_DATE"
				maxlength="2" size="5">�� <br> ���������F<select
				name="SECTION_NAME">
				<option value="bleank"></option>
				<%ArrayList<String> list = (ArrayList<String>)request.getAttribute("SECTION_NAME");
			for(String sectionName : list) { %>
				<option value="<%=sectionName %>"><%=sectionName %></option>
				<% } %>
			</select> <br> ���Г��F<input type="text" name="E_YEAR" maxlength="4" size="5">�N
			<input type="text" name="E_MONTH" maxlength="2" size="5">�� <input
				type="text" name="E_DATE" maxlength="2" size="5">��
		</div>
		<table align="center">
			<tr>
				<td><input type="submit" name="ACTION" value="�o�^"> <input
					type="reset" value="�N���A"></td>
			</tr>
		</table>
		<br>
		</form>
		<form action="MenuServlet" method="POST">
		<div align="center">
			<input type="submit" value="���j���[��ʂ�" name="ACTION">
		</div>
	</form>
</body>
</html>