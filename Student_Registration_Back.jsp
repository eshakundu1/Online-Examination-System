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
				PreparedStatement ps1=con.prepareStatement("select MAX(STUID) from STUDENT Where STUID like 'S%';");
				ResultSet result1=ps1.executeQuery();
				int newIdNumber=0;
				if(result1.next())
				{
					String lastId = result1.getString(1);
	                int lastIdNumber = Integer.parseInt(lastId.substring(1));
	                newIdNumber = lastIdNumber + 1;
				}
				
				String t1=request.getParameter("t1");
				String t2=request.getParameter("t2");
				
				String d1=request.getParameter("d1");
				String m1=request.getParameter("m1");
				String y1=request.getParameter("y1");
				String t3=d1+"-"+m1+"-"+y1;
				
				String t4=request.getParameter("s1");
				String t5=request.getParameter("r");
				String t6 = "S" + newIdNumber;
				
				PreparedStatement ps=con.prepareStatement("insert into ESHA.STUDENT_REGISTRATION values(?,?,?,?,?)");
				ps.setString(1,t6);
				ps.setString(2,t1);
				ps.setString(3,t2);
				ps.setString(4,t3);
				ps.setString(5,t4);
				ps.setString(6,t5);
				
				int v=ps.executeUpdate();
				
				if(v==1)
					out.println("successfully inserted");
				else
					out.println("not successfully inserted");
				
			}
			catch(Exception e)
			{
				System.out.println(e.getMessage());
			}
		%>
	</body>
</html>