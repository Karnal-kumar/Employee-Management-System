<%@page import="java.sql.*"%>

<html>
	<body>
		<% 
		    String eid = request.getParameter("eid");
			PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
			ps.setString(1,request.getParameter("eid"));
			ResultSet rst=ps.executeQuery();
			
			if(rst.next())
			{
				%>
				<jsp:include page="Navbar.jsp"/>
				<form action="Delete-Record.jsp">
				<table style="border-collapse:collapse;margin:auto;text-align:center;width:500px;margin-top:60px;"border="1">
				<tr style="background-color:orange;">
				<th colspan="2" align="center">Employee Details</th>
				</tr>
				<tr>
					<th> ID</th>
				 	<td><%=eid%><input type="hidden" value="<%=eid%>" name='eid'></td>
				</tr>
				<tr>
					<th> FirstName</th>
					<td><%=rst.getString(2) %></td>
				</tr>
				<tr>
					<th> LastName</th>
					<td><%=rst.getString(3) %></td>
				</tr>
				<tr>
					<th> PhoneNo.</th>
					<td><%=rst.getString(4) %></td>
				</tr>
				<tr>
					<th> Department</th>
					<td><%=rst.getString(5) %></td>
				</tr>
				<tr>
					<th> Salary</th>
					<td><%=rst.getString(6) %></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><button style="color:red;font-size:18px;cursor:pointer;">Confirm-Delete</button></td>
				</tr>
			</table>
			</form>
				<%
			}
			else{
				%>
				<jsp:include page="Delete.jsp"/>
		<div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record not found.....</p>
		</div>
				<%
			}
		%>
	</body>
</html>
