<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ayush
  Date: 14/10/20
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Material Design Bootstrap</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="resource/mdb.css" rel="stylesheet">

    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript"
            src="resource/mdb.js"></script>

</head>
<body>


<table class="table table-striped col-8 mx-auto">
<b>
    <thead>
    <th>
        Username
    </th>
    <th>
        Account active
    </th>
    <th>
        Type
    </th>
    <th>
        Role
    </th>

    </thead>
</b>
<c:forEach var="b" items="${l}">
    <tr>

    <td>${b.username}</td>
    <td>${b.active}</td>
    <td>${b.type}</td>
    <td>${b.role}</td>

    <td>

<a class="btn" href="/users/update/${b.username}">Update</a>
        <a class="btn btn-outline-danger" href="/user/delete/${b.username}">Delete</a>

    </td>
    </tr>
    </c:forEach>
</table>


</body>
</html>
