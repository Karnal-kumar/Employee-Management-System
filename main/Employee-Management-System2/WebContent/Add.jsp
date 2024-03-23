<jsp:include page="Navbar.jsp"/>
<html>
	<head>
		<link href="CSS/Style.css" rel="stylesheet"/>
	</head>
	<body onload="makeActive('add')">
		<div class="container">
		     <h3>Insert Page</h3>
			<form action="Add-Record.jsp" >
				<table>
					<tr>
						<th>Enter Employee ID:</th>
						<td><input type="number" name="eid" required></td>
					</tr>
					
					<tr>
						<th>Enter First Name:</th>
						<td><input type="text" name="firstname" required></td>
					</tr>
					
					<tr>
						<th>Enter Last Name:</th>
						<td><input type="text" name="lastname" required></td>
					</tr>
					
					<tr>
						<th>Enter Phone No.:</th>
						<td><input type="number" name="phone" required></td>
					</tr>
					<tr>
						<th>Enter Department:</th>
						<td>
							<select name="dept">
								<option>Select Dept</option>
								<option>Sales</option>
								<option>Accounts</option>
								<option>Tester</option>
								<option>Developer</option>
							</select>
							</td>
					</tr>
					
					<tr>
						<th>Enter Salary:</th>
						<td><input type="text" name="salary" required></td>
					</tr>
					<tr>
						<td colspan="2" align="right"><button>Add Record</button>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>