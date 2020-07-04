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
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jquery.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/jqueryvalidation.js"></script>
<title>Bai 3</title>
</head>
<body>
	<%
		String notification = (String)request.getAttribute("notification");
		String BK = (String)request.getAttribute("bankinh");
		
	%>
	<form action="<%=request.getContextPath()%>/Bai3Controller" method="post" id="form-va">
		<div class="header-div">
			<p>Hình Tròn</p>
		</div>
		<div class="content-div">
			<label> Diện Tích: <input type="text" id="" name="dientich" value=""></label> 
			<br> </br>
			<label> Bán Kính: 
				<input type="text" id="" name="bankinh" value="<%if(BK!=null){out.print(BK);} %>" />
			</label> 
			<br> </br>
			<input type="submit" value="submit"/>
		</div>
		<%
		if(notification != "" && notification != null){
			%><p><%=notification %></p><%
		}
		%>
	</form>
	<script type="text/javascript">
		$(document).ready(function() {
			//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
			$("#form-va").validate({
				rules : {
					dientich : "number",
					bankinh : "number"
				},
				messages : {
					dientich : "<p style='color:red'>Vui lòng nhập số</p>",
					bankinh : "<p style='color:red'>Vui lòng nhập số</p>"
				}
			});
		});
	</script>
</body>
</html>