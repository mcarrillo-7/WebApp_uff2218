<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
<%
	String title = request.getParameter("title");
	if (title == null) {
		title = "";
	} else {
		title = "|" + title;
	}
%>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base href="${pageContext.request.contextPath}/">
<link rel="stylesheet" type="text/css"
	href="vendors/fontawesome-free-5.9.0-web/css/all.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Hello WebApp JEE<%=title%></title>
</head>
<body>