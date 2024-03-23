<%@ page import="java.sql.*" %>
<html>
<body>
	<%
		PreparedStatement ps = (PreparedStatement)application.getAttribute("update");
	    ps.setString(1,request.getParameter("firstname"));
	    ps.setString(2,request.getParameter("lastname"));
	    ps.setString(3,request.getParameter("phone"));
	    ps.setString(4,request.getParameter("dept"));
	    ps.setString(5,request.getParameter("salary"));
	    ps.setString(6,request.getParameter("eid"));
	    ps.executeUpdate();
	    %>
	    <jsp:include page="Edit.jsp"/>
	    <div style="background-color:cyan; width:400px;margin-top:10px;">
			<p>Employee record has been updated successfully....</p>
		</div>
	    <%
	%>
</body>
</html>