<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbcon.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*"%>

<html>
	<head>
	  <title>Online Examination System</title>
	</head>
	<body>
	 	<form name="f1" method="get" action="Student_Registration_Back.jsp">
		  <u><h1>Registration</h1></u>
		  <table>
			    <tr>
			      	<td>Name</td><td><input type="text" name="t1" placeholder="Enter username"></td>
			    </tr>
			    <tr>
			      	<td>Password</td><td><input type="password" name="t2" placeholder="Enter password"></td>
			    </tr>
			    <tr>
			      	<td>Date of Birth</td>
			      	<td>
				      	<select name="d1" id="dd">
					      	<option>DD</option>
					      	<% for(int i=1;i<=31;i++)
					      		{
					      	%>
					      		<option><%= i %></option>
					      	<%
					      		}
					      	%>
					   </select>
					   <%
					   String[] mon={"Jan","Feb","Mar","Apr","May","Jun","July","Aug","Sept","Oct","Nov","Dec"};
					   %>
					   <select name="m1" id="mm">
					       <option>MM</option>
					      	<% for(int i=0;i<12;i++)
					      		{
					      	%>
					      		<option><%= mon[i] %></option>
					      	<%
					      		}
					      	%>
				      	</select>
				      	<select name="y1" id="yy">
					      	<option>YY</option>
					      	<% for(int i=1980;i<=2012;i++)
					      		{
					      	%>
					      		<option><%= i %></option>
					      	<%
					      		}
					      	%>
				      	</select>
			      </td>
			    </tr>
			    <tr>
				     <td>City</td>
				     <td>	
				      		<select name="s1">
				                              		<option>Select</option>
				                              		<option>Kolkata</option>
				                              		<option>Mumbai</option>
				                              		<option>Chennai</option>
				                              		<option>Delhi</option>
				             </select>  
				     </td>
			    </tr>
				<tr>
					<td>Gender</td>
					<td>
                               <input type="radio" name="r"  value="male">Male
                               <input type="radio" name="r"  value="female">Female
					</td>
				</tr>
				<tr align="center">
					 <td colspan="2">
			            <input type="submit" name="b1" value="Signup">
			            <input type="reset" name="b2" value="Reset">
			    	</td>
			  	</tr>
			</table>
		</form>
	</body>
</html>
