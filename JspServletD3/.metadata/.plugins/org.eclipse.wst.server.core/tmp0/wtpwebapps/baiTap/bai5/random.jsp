<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Random</title>
</head>
<body>
	<h1 style="color: red">Kiểm tra số Random</h1>
	<%
		int number = (int) request.getAttribute("number");
	out.print(number);
	if (number % 2 == 0) {
	%>
	<p Style="color: green">Đây là số chẵn</p>
	<%
		} else {
	%>
	<p Style="color: blue">Đây là số lẽ</p>
	<%
		}
	%>
</body>
</html>