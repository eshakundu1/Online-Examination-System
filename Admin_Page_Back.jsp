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
				String t3=request.getParameter("t3");	
				String t4=request.getParameter("t4");
				String t5=request.getParameter("t5");
				
				PreparedStatement ps=con.prepareStatement("insert into TEACHERS values(?,?,?,?,?)");
				ps.setString(1,t1);
				ps.setString(2,t2);
				ps.setString(3,t3);
				ps.setString(4,t4);
				ps.setString(5,t5);
								
				int v=ps.executeUpdate();
				
				if(v==1)
					out.println("successfully inserted");
				else
					out.println("not successfully inserted");
			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		%>
	</body>
</html>
