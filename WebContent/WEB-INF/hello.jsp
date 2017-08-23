
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   

<html>
<head>
   <title>Hi there</title>
</head>
<body>
   <h2>Hello</h2>
   <c:out value="${message}"></c:out> <br> <br> <br>
   <a href="http://localhost:8080/SpringMVC/">back</a>

   <br>

   <c:forEach items="${myMap}" var="entry">
   Key : <c:out value="${entry.key}"/>  Value: <c:out value="${entry.value}"/> <br />
   </c:forEach> 

</body>


</html>