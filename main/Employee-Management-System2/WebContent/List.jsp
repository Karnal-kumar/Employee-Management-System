<%@page import="java.sql.*"%>
<jsp:include page="Navbar.jsp"/>

<html>
	<body>
		<table style="border-collapse:collapse;margin:auto;text-align:center;width:500px;margin-top:60px;" border="1">
			<tr style="background-color:orange;">
			<th colspan="6" align="center">Employee Details</th>
			</tr>
			<tr>
				<th> ID</th>
				<th> FirstName</th>
				<th> LastName</th>
				<th> Phone No.</th>
				<th> Department</th>
				<th> Salary</th>
			</tr>
			
		<%
		Statement st = (Statement)application.getAttribute("select2");
		ResultSet rst=st.executeQuery("Select * from employeeinfo");
		
		while(rst.next())
		{
			%>
			
			<tr>
				<td><%=rst.getString(1) %></td>
				<td><%=rst.getString(2) %></td>
				<td><%=rst.getString(3) %></td>
				<td><%=rst.getString(4) %></td>
				<td><%=rst.getString(5) %></td>
				<td><%=rst.getString(6) %></td>
			</tr>
		
			<% 
		}
		%>
		</table>
	</body>
</html>