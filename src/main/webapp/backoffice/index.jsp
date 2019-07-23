<%@page import="com.ipartek.formacion.controller.listener.UsuariosLogeadosListener"%>
<%@include file="../includes/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../includes/navbar.jsp"%>

<h1>Backoffice</h1>

<%=UsuariosLogeadosListener.nombres%>

<%@include file="../includes/footer.jsp"%>