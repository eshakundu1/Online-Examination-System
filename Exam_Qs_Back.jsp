<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<%@ page import="java.util.*" %>
<html>
	<head>
		<title>Online Examination System</title>
	</head>
	<body>
		<u><h1>Exam Result</h1></u>
		<table border="1" width="100%">
			<tr bgcolor="yellow">
				<td>STUID</td>
				<td><%=(String)session.getAttribute("u1")%></td>
			</tr>
		<%
			try
			{	
				ArrayList<String> questions=new ArrayList<>();//arraylist of questions
				ArrayList<String> answers=new ArrayList<>();//arraylist of corrct answers
				ArrayList<String> responses=new ArrayList<>();//arraylist of responses(ans marked)
				ArrayList<Integer> marks1=new ArrayList<>();//arraylist of marks for each qs
				ArrayList<Integer> marks2=new ArrayList<>();//arraylist of marks obtained
				ArrayList<String> corrections=new ArrayList<>();//arraylist of corrections as correct/incorrect
						
				//STUID
				String t1=(String) session.getAttribute("u1");//STUID	
				String l1=(String) session.getAttribute("l1");//SUBJID
				//out.println("Student ID: "+t1+"\n");
				
				//QSID AND ANS MARKED
				int k;
				int[] z=(int[]) session.getAttribute("v");//order of random QSID
				
				//ANSWERS STORED IN ARRAYLIST ACCORIDNG TO RANDOM QS
				for(int j=0;j<3;j++)
				{
					PreparedStatement ps=con.prepareStatement("Select QS,ANS,MARKS from EXAM_QS WHERE QSID=? and SUBJID=?");
					ps.setString(1,Integer.toString(z[j]));//order of random questions
					ps.setString(1,l1);//SUBJID
					ResultSet result=ps.executeQuery();
					if(result.next())
					{
						String qs=result.getString("QS");
						questions.add(qs);//added to arraylist of questions
						String ans=result.getString("ANS");
						answers.add(ans);//added to arraylist of corrct answers
						String m=result.getString("MARKS");
						int n=Integer.parseInt(m);
						marks1.add(n);//added to arraylist of marks for each qs
					}
				}
				
				for(k=1;k<4;k++)
				{
					//QSID
					String t2=Integer.toString(z[k-1]);
 					String y=String.valueOf(k);
					String t3=request.getParameter(y);//fetching which option marked
					responses.add(t3);//added to arraylist of responses(ans marked)
				}
				
				//CHECKING
				for(int i=0;i<3;i++)
				{
					if(answers.get(i).equals(responses.get(i)))
					{
						corrections.add("Correct");//added to arraylist of corrections as correct
						marks2.add(marks1.get(i));//added to arraylist of marks obtained for correct ans
					}
					else
					{
						corrections.add("Not Correct");//added to arraylist of corrections as not correct
						marks2.add(0);//added to arraylist of marks obtained for incorrect ans
					}
				}
				
				//CORRECT AND WRONG ANS
		%>
						<table border="1" width="100%">
							<tr bgcolor="red">
								<td>QSNO</td>
								<td>QS</td>
								<td>ANS</td>
								<td>ANS MARKED</td>
								<td>CORRET/INCORRECT</td>
								<td>MARKS</td>					
							</tr>
							<%
							int sum=0;
							for(int i=0;i<3;i++)
							{
							%>
								<tr bgcolor="pink">
									<td><%=Integer.toString(z[i])%></td>
									<td><%=questions.get(i)%></td>
									<td><%=answers.get(i)%></td>
									<td><%=responses.get(i)%></td>
									<td><%=corrections.get(i)%></td>
									<td><%=marks2.get(i)%></td>
								</tr>
						<%
								sum=sum+marks2.get(i);
							}
						%>
						</table>
						<table border="1" width="100%">
							<tr bgcolor="red">
								<td>Total Marks Obtained</td>
								<td><%=sum %></td>
							</tr>
						</table>
						<%		
			}
			catch(Exception e)
			{
				out.println(e.getMessage());
			}
		%>
	</body>
</html>
