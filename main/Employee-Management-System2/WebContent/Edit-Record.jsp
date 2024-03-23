<%@page import="java.sql.*" %>
<html>
<body>
	<%  String eid=request.getParameter("eid");
		PreparedStatement ps =(PreparedStatement)application.getAttribute("select");
	    ps.setString(1,eid);
	    ResultSet rst= ps.executeQuery();
	    if(rst.next())
	    {
	    	%>
	    	<jsp:include page="Navbar.jsp"/>
				<form action="Update-Record.jsp">
				<table style="border-collapse:collapse;margin:auto;text-align:center;width:500px;margin-top:60px;"border="1">
				<tr style="background-color:orange;">
				<th colspan="2" align="center">Employee Details</th>
				</tr>
				<tr>
					<th> ID</th>
				 	<td> <input type="number" value="<%=eid%>" name='eid' readonly></td>
				</tr>
				<tr>
					<th> FirstName</th>
					<td><input type="text" name="firstname" value="<%=rst.getString(2)%>"></td>
				</tr>
				<tr>
					<th> LastName</th>
					<td><input type="text" name="lastname" value="<%=rst.getString(3)%>"></td>
				</tr>
				<tr>
					<th> PhoneNo.</th>
					<td><input type="number" name="phone" value="<%=rst.getString(4)%>"></td>
				</tr>
				<tr>
					<th> Department</th>
					<td><select name="dept">
							<option><%=rst.getString(5) %></option>
							<option>Sales</option>
							<option>Account</option>
							<option>Developer</option>
							<option>Tester</option>
					</select></td>
				</tr>
				<tr>
					<th> Salary</th>
					<td><input type="number" name="salary" value="<%=rst.getString(6)%>"></td>
				</tr>
				<tr>
					<td colspan="2" align="right"><button style="color:red;font-size:18px;cursor:pointer;">Update</button></td>
				</tr>
			</table>
			</form>
	    	<%
	    }
	    else
	    {
	    	%>
	    		<jsp:include page="Edit.jsp"/>
	    		<div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record not found.....</p>
		</div>
	    	<%
	    }
	    		
		
	%>
</body>
</html>