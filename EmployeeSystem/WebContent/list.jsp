<%@page import="Model.EmployeeBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; Widows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�]�ƈ��ꗗ���</title>
</head>
<body>
	<form action="MenuServlet" method="POST">

	<h2 align="center">�]�ƈ��ꗗ</h2>
	<br>
		<table border="solid" align="center">
			<tr>
				<td>�폜</td>
				<td>�]�ƈ��R�[�h</td>
				<td>����</td>
				<td>�����i�t���K�i�j</td>
				<td>����</td>
				<td>���N����</td>
				<td>��������</td>
				<td>���Г�</td>
			</tr>
			<%
				ArrayList<EmployeeBean> list = (ArrayList<EmployeeBean>) request
						.getAttribute("LIST");
				if (list.size() != 0) {
					for (EmployeeBean bean : list) {
			%>
			<tr>
				<td><input type="checkbox" name="DELETE" value="<%=bean.getCode()%>"></td>
				<td><%=bean.getCode()%></td>
				<td><%=bean.getFName()%>&nbsp;<%=bean.getLName()%></td>
				<td><%=bean.getFKanaName()%>&nbsp;<%=bean.getLKanaName()%></td>
				<td><%=bean.getSexName()%></td>
				<td><%=bean.getBirthDay()%></td>
				<td><%=bean.getSectionName()%></td>
				<td><%=bean.getEmpDate()%></td>
			</tr>

			<%
				}
				}
			%>
		</table>
		<br>
		<div align="center">
			<input type="submit" name="ACTION" value="�폜">
			 <input type="submit" name="ACTION" value="���j���[��ʂ�">
		</div>
	</form>
</body>
</html>