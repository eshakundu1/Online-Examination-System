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
		<h1 align="center"> Welcome To Online Examination System</h1>
		<hr>
		<form name="f1" method="get" action="Admin_Login.jsp">
			<h2>Are you an Admin? Then, login here.</h2>
			<td colspan="2">
				<input type="submit" name="b1" value="Login">
			</td>
		</form>
		<form name="f1" method="get" action="Teacher_Login.jsp">
			<h2>Are you a Teacher? Then, login here.</h2>
			<td colspan="2">
				<input type="submit" name="b1" value="Login">
			</td>
		</form>
		<form name="f2" method="get" action="Student_Login.jsp">
			<h2>Are you a student? Then, login here.</h2>
			<td colspan="2">
				<input type="submit" name="b2" value="Login">
			</td>
		</form>
		<form name="f3" method="get" action="Student_Registration.jsp">
			<h2>Are you a new student? Then, register here.</h2>
			<td colspan="2">
				<input type="submit" name="b3" value="Register">
			</td>
		</form>
	</body>
</html>