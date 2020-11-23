<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Property Bazaar</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../resource/mdb.css" rel="stylesheet">

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
            src="../resource/mdb.js"></script>
</head>
<body>

<h1 class="text-center text-info">Cart</h1>
<c:choose>
    <c:when test="${empty items}">
        <br>
        <br>
        <br>
        <br>
        <div class="card ui-widget-shadow col-6 mx-auto mt-3">
            <h2 class=" mt-5 text-danger text-center">Sorry. Your Cart is Empty</h2>
            <h3 class=" text-center mt-3">Please add property and then come here to checkout.</h3>
            <div class="col-4 mx-auto">
                <a class="btn btn-success" href="/item">Go to Property Page</a>
            </div>
        </div>
    </c:when>
    <c:otherwise>
        <table class="table product-table container ">
            <thead>
            <th>
                Image
            </th>
            <th>
                Property
            </th>
            <th>
                Mrp
            </th>
            <th>
                Discount
            </th>
            <th>
                Quantity
            </th>
            <th>
                Subtottal
            </th>
            <th>
                Action
            </th>
            </thead>
    <c:forEach var="b" items="${items}">
        <tr>
            <td>
                <img src="${b.i.imgurl}" class="img-fluid" width="200px"/>
            </td>

            <td>${b.i.name}</td>
            <td>$${b.i.mrp}</td>
            <td>${b.i.discount}%</td>
            <td>${b.quantity}</td>
            <td>
                $${b.quantity*b.i.mrp*(1-b.i.discount/100)}
            </td>

            <td>
                <a class="btn btn-danger" href="/cart/remove/${b.item_id}">Remove</a>

                <a class="btn btn-success" href="/cart/add/${b.item_id}">Add</a>

                <a class="btn btn-success" href="/cart/delete/${b.item_id}">Delete</a>
            </td>

        </tr>
    </c:forEach>

</table>
        <div class="row">
            <div class="col-3"></div>
            <div class="col-6"></div>
            <div class="col-3 float-right">
                Total: <span class="text-info">$${total}</span>
            </div>
            <div class="container">
                <a class="btn btn-success" href="/checkout">Checkout</a>
                <a class="btn btn-info" href="/item">Continue Shopping</a>
            </div>
        </div>
    </c:otherwise>
</c:choose>
</body>
<script type="text/javascript">
    <c:choose>
    <c:when test="${empty message}">

    </c:when>
    <c:otherwise>
    $(function () {
        toastr["success"]("${message}");
    });
    </c:otherwise>
    </c:choose>
    <c:choose>
    <c:when test="${empty message2}">

    </c:when>
    <c:otherwise>
    $(function () {
        toastr["warning"]("${message2}");
    });
    </c:otherwise>
    </c:choose>






</script>

</html>