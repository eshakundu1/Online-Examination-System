<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Online Examination System</title>
	</head>
	<body>
		<form name="f1" method="get" action="Login_Back.jsp">
			<u>
				<h1>Login Form</h1>
			</u>
			<table>
				<tr>
					<td>STUID</td>
					<td><input type="text" name="t1"></td>
				</tr>
				<tr>
					<td>PASSWORD</td>
					<td><input type="password" name="t2"></td>
				</tr>
				<tr align="center">
					<td colspan="2">
						<input type="submit" name="b1" value="Login">
						<input type="reset" name="b2" value="Reset">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>