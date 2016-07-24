<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="model.entity.SectionBean"%>
<%@page import="model.dao.SectionDAO"%>
<%@page import="model.entity.EmployeeBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=Windows-31J"
	pageEncoding="Windows-31J"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Windows-31J">
<title>�ڍ׉��</title>
<link href="css/styleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<p class ="title">�]�ƈ��ڍ׉��</p>
	<%
		EmployeeBean bean = (EmployeeBean) session.getAttribute("EMPLOYEE");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy�NMM��dd��");
	%>
	<form action="DetailServlet" method="post">
		<table>
			<tr>
				<td>�]�ƈ��R�[�h�F</td>
				<td><%=bean.getEmployeeNumber()%></td>
			</tr>
			<tr>
				<td>�c���F</td>
				<td><%=bean.getLastName()%></td>
			</tr>
			<tr>
				<td>���O�F</td>
				<td><%=bean.getFirstName()%></td>
			</tr>
			<tr>
				<td>�c���i�J�i�j�F</td>
				<td>
					<%
						String phoneticLastName = bean.getPhoneticLastName();
						if (phoneticLastName == null) {
					%>������<%
						} else {
					%><%=phoneticLastName%> <%
						}
					%>


				</td>
			</tr>
			<tr>
				<td>���O�i�J�i�j�F</td>
				<td>
					<%
						String phoneticFirstName = bean.getPhoneticFirstName();
						if (phoneticFirstName == null) {
					%>������<%
						} else {
					%><%=phoneticFirstName%> <%
						}
						%>
				</td>
			</tr>
			<tr>
				<td>���ʁF</td>
				<td>
					<%
						if (bean.getSex() == 0) {
					%>�j��<%
						} else if (bean.getSex() == 1) {
					%>����<%
						} else {
					%>������<%
						}
					%>
				</td>
			</tr>
			<tr>
				<td>���N�����F</td>
				<td>
					<%
						Date bDay = bean.getBirthDay();
						if (bDay != null) {
							String birthDay = sdf.format(bDay);
					%><%=birthDay%> <%
 	} else {
 %>������<%
 	}
 %>
				</td>
			</tr>
			<tr>
				<td>�����F</td>
				<td><%=bean.getSectionName()%></td>
			</tr>
			<tr>
				<td>���Г��F</td>
				<td>
					<%
						Date hDate = bean.getHireDate();
						if (hDate != null) {
							String hireDate = sdf.format(hDate);
					%><%=hireDate%> <%
 	} else {
 %>������<%
 	}
 %>
				</td>
			</tr>
		</table>
		<input type="submit" name="ACTION" value="�ҏW"> <input
			type="submit" name="ACTION" value="�폜"
			onClick="return confirm('ID=<%=bean.getEmployeeNumber()%>���폜���܂�����낵���ł����H')">
		<input type="hidden" name="EMPLOYEE_CODE"
			value="<%=bean.getEmployeeNumber()%>">
	</form>
	<form action="ListServlet" method="get">
		<input type="submit" name="ACTION" value="�ꗗ��ʂ�">
	</form>
</body>
</html>