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
    <div
      class="container d-flex justifty-content-center flex-column align-items-center"
    >
      <h1>Send an Omikuji!</h1>
      <div class="container">
        <form action="/form" method="post">
          <div class="form-group">
            <label for="number" class="form-label mt-4"
              >Pick any number from 5 to 25:</label
            ><br />
            <input
              type="number"
              class="form-control"
              name="number"
              min="5"
              max="25"
            /><br />
          </div>
          <div class="form-group">
            <label for="city" class="form-label mt-4"
              >Enter the name of any city.</label
            >
            <input
              type="text"
              class="form-control"
              name="city"
              id="city"
              placeholder="Enter City"
            />
          </div>
          <div class="form-group">
            <label for="person" class="form-label mt-4"
              >Enter the name of any real person</label
            >
            <input
              type="text"
              class="form-control"
              name="person"
              id="person"
              placeholder="Enter Person"
            />
          </div>
          <div class="form-group">
            <label for="hobby" class="form-label mt-4"
              >Enter professional endeavor or hobby:</label
            >
            <input
              type="text"
              class="form-control"
              name="hobby"
              id="hobby"
              placeholder="Enter Hobby"
            />
          </div>
          <div class="form-group">
            <label for="living" class="form-label mt-4"
              >Enter any type of living thing.</label
            >
            <input
              type="text"
              class="form-control"
              name="living"
              id="living"
              placeholder="Enter Living Thing"
            />
          </div>
          <div class="form-group">
            <label for="nice" class="form-label mt-4"
              >Say something nice to someone</label
            >
            <textarea
              class="form-control"
              name="nice"
              id="nice"
              rows="3"
            ></textarea>
          </div>
          <h5 class="mt-3">Send and show a friend</h5>
          <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-outline-success">
              Success
            </button>
          </div>
        </form>
      </div>
    </div>
  </body>
</html>
