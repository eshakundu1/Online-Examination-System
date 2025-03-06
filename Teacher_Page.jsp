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
		<form name="f1" method="get" action="Teacher_Page_Back.jsp">
			<u><h1 align="center">WELCOME</h1></u>
			<table border="1" width="100%">
				<tr bgcolor="yellow">
					<td>TEACHER USERID</td>
					<td><%=(String)session.getAttribute("u1")%></td>
				</tr>
				<tr bgcolor="yellow">
					<td>TEACHER NAME</td>
					<td><%=(String)session.getAttribute("u2")%></td>
				</tr>
				<tr bgcolor="yellow">
					<td>SUBJECT ID</td>
					<td><%=(String)session.getAttribute("u3")%></td>
				</tr>
				<tr bgcolor="yellow">
					<td>SUBJECT NAME</td>
					<td><%=(String)session.getAttribute("u4")%></td>
				</tr>
			</table>
			<table>
			    <tr>
			      	<td>Question No.</td><td><input type="text" name="t2" placeholder="enter question no."></td>
			    </tr>
				<tr>
			      	<td>Question</td><td><input type="text" name="t3" placeholder="enter question"></td>
			    </tr>
			    <tr>
			      	<td>Option 1</td><td><input type="text" name="t4" placeholder="enter option 1"></td>
			    </tr>
			    <tr>
			      	<td>Option 2</td><td><input type="text" name="t5" placeholder="enter option 2"></td>
			    </tr>
			    <tr>
			      	<td>Option 3</td><td><input type="text" name="t6" placeholder="enter option 3"></td>
			    </tr>
			    <tr>
			      	<td>Answer</td><td><input type="text" name="t7" placeholder="enter answer"></td>
			    </tr>
			    <tr>
			      	<td>Marks</td><td><input type="text" name="t8" placeholder="enter marks"></td>
			    </tr>
			    <tr>
			    <td colspan="2">
					<input type="submit" name="b1" value="SUBMIT">
					<input type="reset" name="b2" value="Reset">
				</td>
				</tr>
			</table>
		</form>
	</body>
</html>
