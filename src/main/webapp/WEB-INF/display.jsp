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
    <title>Omikuji</title>
    <link
      rel="stylesheet"
      href="webjars/bootswatch/5.2.3/dist/darkly/bootstrap.css"
    />
  </head>
  <body>
    <div class="container text-center">
      
      <div class="card text-white bg-info mb-3 text-center" style="max-width: 20rem">
        <div class="card-header">Here is your Omikuji!</div>
        <div class="card-body">
          <p class="card-text">
            <p>In 10 years, you will live in <span><c:out value="${city}"></c:out></span> with <span><c:out value="${person}"></c:out></span> as your roomate, selling <span><c:out value="${hobby}"></c:out></span> for a living. The next time you see a <span><c:out value="${living}"></c:out></span>, you will have good luck. Also, <span><c:out value="${nice}"></c:out></span></p>
          </p>
        </div>
      </div>
      <h4><a href="/omikuji">Omikuji</a></h4>
      <h4><a href="/">Welcome</a></h4>
    </div>
  </body>
</html>
