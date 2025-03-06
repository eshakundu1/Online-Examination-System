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
				String t1=request.getParameter("t1");//STUID
				String t2=request.getParameter("t2");//PASSWORD
				
				PreparedStatement ps=con.prepareStatement("select STUID,PASSWORD from STUDENT where STUID=? and PASSWORD=?");
				ps.setString(1,t1);//STUID
				ps.setString(2,t2);//PASSWORD				
				int v=ps.executeUpdate();				
				if(v==1)
				{
					session.setAttribute("u1",t1);//STUID
					response.sendRedirect("Student_Page.jsp");
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
