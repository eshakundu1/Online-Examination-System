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
				String t1=(String)session.getAttribute("u3");//subjid
				String t2=request.getParameter("t2");//qsid
				String t3=request.getParameter("t3");//qs
				String t4=request.getParameter("t4");//option 1
				String t5=request.getParameter("t5");//option 2
				String t6=request.getParameter("t6");//option 3
				String t7=request.getParameter("t7");//answer
				String t8=request.getParameter("t8");//marks
				
				PreparedStatement ps1=con.prepareStatement("select QSID, QS from EXAM_QS where SUBJID=?");
				ps1.setString(1,t1);
				ResultSet rs=ps1.executeQuery();	
				
				String s1 = "";
				String s2 = "";

				if (rs.next()) {
				    s1 = rs.getString("QSID");
				    s2 = rs.getString("QS");
				    
				    if(s1.equals(t2))//checking if qsid is getting repeated
				    {
				    	out.println("Qs no. already exists");
				    }
				    else if(s2.equals(t3))//checking if qs is getting repeated
				    {
				    	out.println("Qs already exits");
				    }
				    else
				    {
						PreparedStatement ps2=con.prepareStatement("insert into EXAM_QS values(?,?,?,?,?,?,?,?)");
						ps2.setString(1,t1);
						ps2.setString(2,t2);
						ps2.setString(3,t3);
						ps2.setString(4,t4);
						ps2.setString(5,t5);
						ps2.setString(6,t6);
						ps2.setString(7,t7);
						ps2.setString(8,t8);
										
						int v=ps2.executeUpdate();
						
						if(v==1)
							out.println("successfully inserted");
						else
							out.println("not successfully inserted");
				    }
				}

			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		%>
	</body>
</html>