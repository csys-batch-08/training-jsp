<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Expression Tag Demo</title>
</head>
<body>
  <h3>Choose an course:</h3>
  <form method="get">
    <input type="checkbox" name="courses" value="Java">Java
    <input type="checkbox" name="courses" value="Angular">Angular
    <input type="checkbox" name="courses" value="react">React
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] courses = request.getParameterValues("courses");
  if (courses != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
  <%
      for (int i = 0; i < courses.length; ++i) {
  %>
        <li><%= courses[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>