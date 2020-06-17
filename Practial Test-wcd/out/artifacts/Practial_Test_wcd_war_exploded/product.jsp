<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 6/17/2020
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Practial test</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous"></head>
<body>
<sql:setDataSource var="myDatasource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/fdata?serverTimezone=UTC" user="root" password=""/>
<sql:query var="result"  dataSource="${myDatasource}">
    SELECT * FROM tbroducts;
</sql:query>
<table class="table table-active">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>CRUD</th>
    </tr>
    <tr>
        <c:forEach var="row" items="${result.rows}">
    <tr>
        <td><c:out value="${row.id}"/></td>
        <td><c:out value="${row.name}"/></td>
        <td><c:out value="${row.price}"/></td>
        <td><c:out value="${row.amount}"/></td>
        <td><c:out value="${row.details}"/></td>
    </tr>
    </c:forEach>
    <form action="logout" method="post">
        <input type="submit" value="Logout">
    </form>
    </tr>
</table>

</body>
</html>
