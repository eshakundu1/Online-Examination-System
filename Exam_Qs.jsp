<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ include file="dbcon.jsp" %>
<html>
	<head>
	  <title>Online Examination System</title>
	</head>
	<body>
	 	<form name="f1" method="get" action="Exam_Qs_Back.jsp">
		  <u><h1>Exam</h1></u>
		  <table>
			<%
			try
			{
					//Generating random question numbers
					int []x=new int[3];//array for random qs no.
					int a,i=0;
					while(i<3)
					{
						double b=Math.random();
						a=(int) (3*b)+1;
						boolean flag=false;
						for(int j=0;j<i;j++)
						{
							if(x[j]==a)
							{
								flag=true;
								break;
							}
						}
						if(flag==false)
						{
							x[i]=a;
							i++;
						}
					}
					session.setAttribute("v",x);//setting order of random questions in session
					
					//Random questions printing with random options
					int k=1;
					for(int q=0;q<3;q++)
					{
						PreparedStatement ps1=con.prepareStatement("Select QSID,QS,ANSOP1,ANSOP2,ANSOP3 from EXAM_QS where QSID=?");
						ps1.setString(1,Integer.toString(x[q]));//Fetching random question
						ResultSet result1=ps1.executeQuery();
						if(result1.next())
						{	
							%>	
						    <tr>
						      	<td>QUESTION</td>
						     </tr>
						     <tr>
						      	<td><%=(String)result1.getString(1)%></td>
						     </tr>
						     <tr>
						        <td><%=(String)result1.getString(2)%></td>
						    </tr>
						    <%
						}
						
						
						ArrayList<String> options=new ArrayList<>();//arraylist of options 

						for(int l=3;l<6;l++)
						{
							options.add((String)result1.getString(l));//storing options from index 0
						} 
						
						//Generating random options
						int c,p=0,t=0;
						int []op=new int[3];//array for storng random options order
						while(p<3)
						{
							double d=Math.random();
							c=(int) (3*d)+1;
							boolean flag=false;
							for(int l=0;l<p;l++)
							{
								if(op[l]==c)
								{
									flag=true;
									break;
								}
							}
							if(flag==false)
							{
								op[p]=c;
								p++;
							}
						}
						/*
						//checking output
						for(int z=0;z<3;z++)
							out.println(op[z]);
						out.println("0"+options.get(op[0]-1));
						out.println("1"+options.get(op[1]-1));
						out.println("2"+options.get(op[2]-1));
						*/
						
						//random options display
						while(t==0)
						{
					    %>
					    <tr>
							<td>OPTIONS</td>
						</tr>
						<tr>
							<td>
		                               <input type="radio" name="<%=k%>"  value="<%=options.get(op[0]-1)%>"><%=options.get(op[0]-1)%>
		                               <input type="radio" name="<%=k%>"  value="<%=options.get(op[1]-1)%>"><%=options.get(op[1]-1)%>
		                               <input type="radio" name="<%=k%>"  value="<%=options.get(op[2]-1)%>"><%=options.get(op[2]-1)%>
		                               
							</td>
						</tr>
						<tr>
					 	</tr>
						<%
						t=1;
						}
						k++;
					}
					
				%>
					<tr align="center">
					 <td colspan="2">
			            <input type="submit" name="b1" value="SUBMIT">
			            <input type="reset" name="b2" value="RESET">
			    	</td>
			  	</tr>
			  </table>
			<%
			}
			catch(Exception e1)
			{
			}
			%>
		</form>
	</body>
</html>
