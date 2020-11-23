<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: ayush
  Date: 14/10/20
  Time: 3:09 PM
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/css/mdb.min.css" rel="stylesheet">

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
            src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.10/js/mdb.min.js"></script>
</head>
<body class="container ">
<h1 class="text-info text-center"> Add Invoice</h1>
<form:form action="/supplier" cssClass="shadow-lg" method="post" modelAttribute="f">
    <div class="mx-4 my-4">
    <br>
        Amount: <form:input path="amount"></form:input>
    <br>
    <br>
       Supplier id <form:input path="supplierid"></form:input>
    <br>
    <br>
        Item_id<form:input path="a.item_id" placeholder="item_id"/>
        Quantity<form:input path="a.qt_avail" placeholder="auantity"/>
        Cost<form:input path="a.cost_price" placeholder="cost price"/>
    <br>
    <br>
        <!-- item_id<form:input path="b.item_id" placeholder="item_id"/>
        Quantitty<form:input path="b.qt_avail" placeholder="auantity"/>
        Cost<form:input path="b.cost_price" placeholder="cost price"/> -->
    <br>
        <center>
    <input type="submit" value="submit" class="btn btn-outline-success">
    </div>
</form:form>
</body>
</html>
