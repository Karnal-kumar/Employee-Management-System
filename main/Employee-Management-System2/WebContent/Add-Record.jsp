<%@page import="java.sql.*" %>

<html>
	<body>
		<%
		 PreparedStatement ps=(PreparedStatement)application.getAttribute("insert");
		  ps.setString(1,request.getParameter("eid"));
		  ps.setString(2,request.getParameter("firstname"));
		  ps.setString(3,request.getParameter("lastname"));
		  ps.setString(4,request.getParameter("phone"));
		  ps.setString(5,request.getParameter("dept"));
		  ps.setString(6,request.getParameter("salary"));
		  ps.executeUpdate();
		%>
		<jsp:include page="Add.jsp"/>
		<div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record added successfully.....</p>
		</div>
		
	</body>
</html>