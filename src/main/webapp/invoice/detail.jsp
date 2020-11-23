<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ayush
  Date: 11/10/20
  Time: 12:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Property Bazaar</title>
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
<body>

<h1 class="text-center">
    Rc Detail RC#${l.invoice_id}
</h1>
<div class="container">
    <table class="table table-striped col-10 mx-auto">
        <tr>
            <td>
                Date
            </td>
            <td>
                ${l.date}
            </td>
        </tr>
        <tr>
            <td>
                Total
            </td>
            <td>
                ${l.amount}
            </td>

        </tr>

        <tr>
            <td>
             Supplier_id
            </td>
            <td>
               ${l.supplierid}
            </td>
        </tr>
    </table>

<table class="table table-striped product-table">
    <h1 class="text-info text-center">Properties </h1>
    <thead>
    <th>
        Prop id
    </th>
    <th>
     Cost Price
    </th>
    <th>
       Quantity
    </th>


    </thead>
<c:forEach var="b" items="${p}">
    <tr>
        <td>${b.item_id}</td>
        <td>${b.cost_price}</td>
        <td>${b.quantity}</td>
    </tr>
</c:forEach>
</table>
</body>
</html>
