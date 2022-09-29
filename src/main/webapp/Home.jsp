<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/" method="POST">
<h3>Enter height in cm</h3><br/><br/>
<input type="text" name="height" id="height"><br/><br/>
<h3>Enter weight in kg</h3><br/><br/>
<input type="text" name="weight" id="weight"><br/><br/>
<input type="submit">
</form>
<% 
	double h = Double.parseDouble(request.getParameter("height")) / 100;
	int w = Integer.parseInt(request.getParameter("weight"));
	if(w/(h*h) <= 25.0){
		response.sendRedirect("./Overweight.html");
	}
	else{
		response.sendRedirect("./Normal.html");
	}
%>
</body>
</html>