<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>

<html>
	<head>
		<title>Online Examination System</title>
	</head>
	<body>
		<%
			try
			{
				String t1=request.getParameter("t1");
				String t2=request.getParameter("t2");
				
				PreparedStatement ps=con.prepareStatement("select USERID,PASSWORD from STAFF where USERID=? and PASSWORD=?");
				ps.setString(1,t1);
				ps.setString(2,t2);				
				int v=ps.executeUpdate();				
				if(v==1)
				{
					session.setAttribute("u1",t1);
					response.sendRedirect("Admin_Page.jsp");
					out.println("successful");
				}
				else
					out.println("invalid credentials");
			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		%>
	</body>
</html>
