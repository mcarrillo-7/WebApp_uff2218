<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/navbar.jsp"%>

${mensaje}
<form action="login" method="post">
	<input type="text" name="usuario" placeholder="Your Username">
	<br>
	<input type="password" name="pass" placeholder="Your password">
	<br>
	<input type="submit" name="acceder">
</form>
<%@include file="../includes/footer.jsp"%>