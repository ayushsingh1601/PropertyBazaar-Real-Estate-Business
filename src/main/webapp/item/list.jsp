<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Property Bazaar</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../resource/fontawsome.css">
    <!-- Bootstrap core CSS -->
    <link href="../resource/bootstrap.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../resource/mdb.css" rel="stylesheet">

    <!-- JQuery -->
    <script type="text/javascript" src="../resource/jquery.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript"
            src="../resource/poper.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript"
            src="../resource/bootstrap.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript"
            src="../resource/mdb.js"></script>
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark primary-color">
    <a class="navbar-brand" href="#">Property Bazaar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <c:choose>
                <c:when test="${user.type =='ADMIN'}">
                    <li class="nav-item">
                        <a class="nav-link" href="/item">Properties <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/brand">Types</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/employee">Agent</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/supplier">Owners</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/customer">Customers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/users">Users</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/exp">Expenses</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/tax">Tax</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/item/add">Add Property</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/brand/add">Add Type</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminrc">Reciepts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/invoice">Invoice</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/j_spring_security_logout">Logout</a>

                    </li>
                </c:when>
                <c:when test="${user.type== 'Customer'}">

                    <li class="nav-item">
                        <a class="nav-link" href="/item">Property</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/rc">Reciepts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/cart">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/feedback">Feedback</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/j_spring_security_logout">Logout</a>
                    </li>

                </c:when>
            </c:choose>

        </ul>
    </div>
</nav>
<div class="mx-5 mt-4">
    <div class="row">
        <div class="col-3 mt-5">
            <h1 class="text-info">Filter Properties</h1>
<center>
            <form action="/filteritem"  method="get" modelAttribute="filter">



                <div class="md-form">
                    <label for="min_p">Minimum Price</label>
                    <INPUT TYPE=TEXT NAME=min_p  id="min_p"class="form-control col-5" />

                </div>

                <div class="md-form">
                    <label for="max_p">Maximum Price</label>
                    <INPUT TYPE=TEXT NAME=max_p  id="max_p"class="form-control col-5"/>

                </div>

                <div class="md-form">
                    <label for="name">Name</label>
                    <INPUT TYPE=TEXT NAME=name  id="name"class="form-control col-5"/>

                </div>

                <div class="md-form">
                    <label for="rating">Rating</label>
                    <INPUT TYPE=TEXT NAME=rating  id="rating"class="form-control col-5"/>

                </div>

                <div class="md-form">
                    <label for="discount">Discount</label>
                    <INPUT TYPE=TEXT NAME=discount  id="discount"class="form-control col-5"/>

                </div>

                <!-- <div class="md-form">
                    <label for="qnt">Quantity</label>
                    <INPUT TYPE=TEXT NAME=qnt  id="qnt" class="form-control col-5"/>

                </div> -->

                <div class="md-form">
                <label for="brand_id">Type</label>
                <select id="brand_id" name="brand_id" class="form-contol col-5 mdb-select">
                    <option value="0">ALL</option>
                    <c:forEach var="b" items="${brands}">
                        <option value="${b.brand_id}">${b.brand_name}</option>
                    </c:forEach>
                </select>
                </div>
                <button type="submit" class="btn btn-secondary">Search</button>
            </form>
</center>

        </div>
        <div class="col-8">
            <div class="row">
                <!-- Card -->
                <c:forEach var="b" items="${items}">
                    <div class="card col-4 product mt-1">

                        <!-- Card image -->
                        <div class="view overlay">
                            <img class="card-img-top"
                                 src="${b.imgurl}"
                                 alt="Card image cap">
                            <a href="#!">
                                <div class="mask rgba-white-slight"></div>
                            </a>
                        </div>

                        <!-- Card content -->
                        <div class="card-body">

                            <!-- Title -->
                            <h4 class="card-title">${b.name}</h4>
                            <!-- Text -->
                            <p class="card-text">${b.description}</p>
                            <!-- Button -->
                            <a href="/item/${b.item_id}" class="btn btn-primary">View</a>

                        </div>


                    </div>
                </c:forEach>

                <!-- Card -->
            </div>
        </div>
    </div>

</div>


<div class="container fixed-bottom mb-5">
    <h4>
<div class="row">
    <div class="text-info col-6"><div class="float-right"> <br>Page No:</div></div>

    <ul id="pagin" class="pagination col-6 ">
    </ul>
</div>
    </h4>
</div>


</div>

<script type="text/javascript">

    $(document).ready(function () {
        $('.mdb-select').material_select();
    });


    <c:choose>
    <c:when test="${empty message}">

    </c:when>
    <c:otherwise>
    $(function () {
        toastr["success"]("${message}");
    });
    </c:otherwise>
    </c:choose>



    //Pagination
    pageSize = 4;

    var pageCount = ${items.size()/4};

    for (var i = 0; i < pageCount; i++) {
        $("#pagin").append('<li class="page-item btn btn-sm"><a class="page-link" href="#">' + (i + 1) + '</a></li> ');
    }

    showPage = function (page) {
        $(".product").hide();
        $(".product").each(function (n) {
            if (n >= pageSize * (page - 1) && n < pageSize * page)
                $(this).show();

        });
    }

    showPage(1);

    $("#pagin li a").click(function () {
        $("#pagin li a").removeClass("current");
        $(this).addClass("current");
        showPage(parseInt($(this).text()))
    });


</script>

</body>

</html>