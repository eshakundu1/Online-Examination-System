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
		<form name="f1" method="get" action="Admin_Back.jsp">
			<u><h1 align="center">WELCOME</h1></u>
			<table border="1" width="100%">
				<tr bgcolor="yellow">
					<td>ADMIN USERID</td>
					<td><%=(String)session.getAttribute("u1")%></td>
				</tr>
			</table>
			<h2 align="center">Add new teacher</h2>
			<table>
			   <tr>
			      	<td>Teacher ID</td><td><input type="text" name="t1" placeholder="enter teacher id"></td>
			   </tr>
			   <tr>
			      	<td>Teacher Name</td><td><input type="text" name="t2" placeholder="enter name"></td>
			    </tr>
			    <tr>
			      	<td>Password</td><td><input type="password" name="t3" placeholder="enter password"></td>
			    </tr>
			    <tr>
			      	<td>Subject ID</td><td><input type="text" name="t4" placeholder="enter subject id"></td>
			    </tr>
			    <tr>
			      	<td>Subject Name</td><td><input type="text" name="t5" placeholder="enter subject name"></td>
			    </tr>
			    <tr>
				<td colspan="2">
					<input type="submit" name="b1" value="SUBMIT">
				</td>
				</tr>
			</table>
		</form>
	</body>
</html>
