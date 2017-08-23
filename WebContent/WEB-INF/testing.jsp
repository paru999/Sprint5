<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3307/facebook_db"
        user="root" password="1234" />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM tbl_user;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of users</h2></caption>
            <tr>
                <th>Name</th>
                <th>Name2</th>
                <th>Email</th>
                <th>image</th>
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
                <tr>
                    <td><c:out value="${tbl_user.vchr_firstname}" /></td>
                    <td><c:out value="${tbl_user.vchr_lastname}" /></td>
                    <td><c:out value="${tbl_user.vchr_email}" /></td>
                    <td><c:out value="${tbl_user.vchr_image}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
</html>