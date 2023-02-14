<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Welcome</title>
    <link
      rel="stylesheet"
      href="webjars/bootswatch/5.2.3/dist/darkly/bootstrap.css"
    />
  </head>
  <body>
    <div class="container text-center">
      <h1>Welcome</h1>
      <div class="container text-center">
        <h4><a href="/omikuji">Create an Omikuji</a></h4>
        <h4><a href="/omikuji/show">View Omikuji</a></h4>
      </div>
    </div>
  </body>
</html>
