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
<div class="mt-5 container">
    <div class="card ui-widget-shadow">
        <div class="row">
            <div class="col-4"><img src="${item.imgurl}" class="img-fluid"/> </div>
            <div class="col-8"> <h1 class="text-info text-center">${item.name}</h1>
                <div class="text-light">${item.description}</div>
                <div class="text-danger">${item.sold_qt} sold</div>
                <div> Price <del>Rs ${item.mrp}</del>   <p class="text-success"> Rs ${item.mrp-item.discount*item.mrp/100}</p></div>

                <div class="text-danger">Locality:-${item.category}<br>
                    ${item.discount}% Discount <br>
                    Rating:- ${item.rating} <br>
                    ${item.qt_avail} unit available</div>
                 <c:set var="income" scope="session" value ="${2*1}"/>
                        <c:if test="${income > 0 }">   
                <c:choose>
                    <c:when test="${empty Customer}">
                    </c:when>
                    <c:otherwise>
                        
                        <!-- {% if item.qt_avail > 0 %} -->
                <a class="btn btn-danger float-right" href="/item/add/cart/${item.item_id}">Buy</a>
                        <!-- {% endif %} -->
                        
                    </c:otherwise>
                </c:choose>
            </c:if>

                <c:choose>
                    <c:when test="${empty Admin}">
                    </c:when>
                    <c:otherwise>

                        <a class="btn btn-outline-success float-right" href="/item/update/${item.item_id}">Update</a>

                        <a class="btn btn-danger float-right" href="/item/remove/${item.item_id}">Remove</a>

                    </c:otherwise>
                </c:choose>

        </div>
    </div>

</div>
<h1 class="text-danger text-center"> Feedback</h1>
    <c:forEach var="b" items="${ff}">
    <div class="card mt-4 ui-widget-shadow">
        <div class="mx-2">
        <div class="text-info">Rating:- ${b.rating}</div>
        <div class="text-info">Description:- ${b.description}</div>
        <div class="text-info">Date:- ${b.date}</div>
        </div>
    </div>
    </c:forEach>
<div class="col-2 mx-auto">
    <a class="btn btn-success" href="/item">Back</a>
</div>
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
</script>
</html>