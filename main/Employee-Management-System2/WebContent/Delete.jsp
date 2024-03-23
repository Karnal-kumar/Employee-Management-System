<jsp:include page="Navbar.jsp"/>
<html>
	<head>
		<link href="CSS/Style.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
		     <h3>Delete Page</h3>
			<form action="Delete-Alert.jsp">
				<table>
					<tr>
						<th>Enter Employee ID:</th>
						<td><input type="number" name="eid" required></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><button>Delete</button></td>
					</tr>
					
				</table>
			</form>
		</div>
	</body>
</html>