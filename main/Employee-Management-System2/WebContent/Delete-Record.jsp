<%@page import="java.sql.*" %>

<html>
	<body>
		<%
		  PreparedStatement ps = (PreparedStatement)application.getAttribute("delete");
		  ps.setString(1,request.getParameter("eid"));
		  ps.executeUpdate();
		  %>
		  	<jsp:include page="Delete.jsp"/>
		  	<div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record has been deleted successfully.....</p>
		</div>
		  <%
		%>
	</body>
</html>