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
		<form name="f1" method="get" action="EXAM_QS_.jsp">
			<u><h1 align="center">WELCOME STUDENT</h1></u>
			<table border="1" width="100%">
				<tr bgcolor="yellow">
					<td>STUDID</td>
					<td><%=(String)session.getAttribute("u1")%></td>
				</tr>
			</table>
			<h2 align="center">Choose subject to give exam</h2>
				<tr>
					<td colspan="2">
						<button type="submit" name="b1" value="P01">GK</button>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit" name="b1" value="P02">SCIENCE</button>
					</td>
				</tr>
			  </form>		
			</table>
		</form>
	</body>
</html>
