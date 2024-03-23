<%@ page import="java.sql.*" %>

<html>
	<body>
		
			
		<%
		PreparedStatement ps = (PreparedStatement)application.getAttribute("select");
		ps.setString(1,request.getParameter("eid"));
		ResultSet rst=ps.executeQuery();
		
		if(rst.next())
		{
			%>
			<jsp:include page="Navbar.jsp"/>
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
			<tr>
				<td><%=rst.getString(1) %></td>
				<td><%=rst.getString(2) %></td>
				<td><%=rst.getString(3) %></td>
				<td><%=rst.getString(4) %></td>
				<td><%=rst.getString(5) %></td>
				<td><%=rst.getString(6) %></td>
			</tr>
		</table>
			
			<%
		}
		else
		{
			%>
			<jsp:include page="Search.jsp"/>
		<div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record not found.....</p>
		</div>
			<%
		}
		%>
	</body>
</html>