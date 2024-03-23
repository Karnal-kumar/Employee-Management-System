<jsp:include page="Navbar.jsp"/>
<html>
	<head>
		<link href="CSS/Style.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
		     <h3>Update Page</h3>
			<form action="Edit-Record.jsp">
				<table>
					<tr>
						<th>Enter Employee ID:</th>
						<td><input type="number" name="eid" required></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><button>Update</button></td>
					</tr>
					
				</table>
			</form>
		</div>
	</body>
</html>