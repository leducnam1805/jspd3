<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
form {
	margin: auto;
	border: 1px solid black;
	width: 300px;
}

.header-div {
	width: 100%;
	height: 50px;
	line-height: 50px;
	background-color: #0033FF;
	color: white;
}

p {
	padding-left: 5px;
	margin: 0px !important;
	font-weight: bold;
}

.content-div {
	padding: 10px;
	background-color: #00FFFF;
}
</style>
<meta charset="UTF-8">
<title>Bai 2</title>
</head>
<body>
	<%
		String hoten = (String) request.getAttribute("ten");
	%>
	<form action="<%=request.getContextPath()%>/Bai2Controller"
		method="post">
		<div class="header-div">
			<p>In Câu Chào</p>
		</div>
		<div class="content-div">
			<label> Nhập tên: 
				<input type="text" id="" name="ten" value="<%if (hoten != null) {out.print(hoten);}%>"/>
			</label> <br> </br>
			<input type="submit" value="In câu chào">
		</div>
		<%
			if(hoten!=null && hoten!=""){
				%>
					<p>Chào bạn <%= hoten %></p>
				<%
			}
		%>
	</form>
</body>
</html>