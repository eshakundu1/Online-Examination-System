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
				
				PreparedStatement ps=con.prepareStatement("select TID,PASSWORD from TEACHER where TID=? and PASSWORD=?");
				ps.setString(1,t1);
				ps.setString(2,t2);				
				int v1=ps1.executeUpdate();				
				if(v1==1)
				{
					PreparedStatement ps2=con.prepareStatement("select TNAME,SUBJID, SUBJNAME from TEACHER where TID=?");
					ps2.setString(1,t1);
					ResultSet rs=ps2.executeQuery();	
					
					String t3 = "";
					String t4 = "";
					String t5 = "";

					if (rs.next()) {
					    t3 = rs.getString("TNAME");
					    t4 = rs.getString("SUBJID");
					    t5 = rs.getString("SUBJNAME");
					}
					
					session.setAttribute("u1",t1);
					session.setAttribute("u2",t3);
					session.setAttribute("u3",t4);
					session.setAttribute("u4",t5);
					response.sendRedirect("Teacher_Page.jsp");
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
