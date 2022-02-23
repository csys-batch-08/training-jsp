<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		function showProduct() {

			const xhttp = new XMLHttpRequest();
			xhttp.onload = function() {
				document.getElementById("demo").innerHTML = this.responseText;
			}
			xhttp.open("GET", "ProductServlet");
			xhttp.send();

		}
	</script>
	<button onclick="showProduct()">Click to View The Products</button>
	<hr>
	<h2>Product List</h2>
	<p id="demo"></p>
</body>
</html>