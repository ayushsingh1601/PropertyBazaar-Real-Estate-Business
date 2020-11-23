<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<h1 class="text-center">Reciept</h1>

    <div class="container">
        <table class="table table-striped mx-2">
            <thead>
            <th>S. No</th>
            <th>Date</th>
            <th>Toatl</th>
            <th>Amount_Payed</th>

            </thead>
            <c:forEach var="b" items="${items}">
                <tr class="product">
                    <td>${b.receipt_id}</td>
                    <td>${b.date}</td>
                    <td>${b.amount}</td>
                    <td>${b.amount_payed}</td>
<td><a class="btn btn-outline-info" href="rc/${b.receipt_id}">View</a> </td>
                </tr>


            </c:forEach>

        </table>

</div>

<div class="container fixed-bottom mb-5">
    <h4>
        <div class="row">
            <div class="text-info col-6">
                <div class="float-right"><br>Page No:</div>
            </div>

            <ul id="pagin" class="pagination col-6 ">
            </ul>
        </div>
    </h4>
</div>


<script type="text/javascript">
    //Pagination
    pageSize = 8;

    var pageCount = ${items.size()/8};

    for (var i = 0; i < pageCount; i++) {
        $("#pagin").append('<li><a class="page-item btn btn-lg page-link" href="#">' + (i + 1) + '</a></li> ');
    }

    showPage = function (page) {
        $(".product").hide();
        $(".product").each(function (n) {
            if (n >= pageSize * (page - 1) && n < pageSize * page)
                $(this).show();

        });
    };

    showPage(1);

    $("#pagin li a").click(function () {
        $("#pagin li a").removeClass("current");
        $(this).addClass("current");
        showPage(parseInt($(this).text()))
    });


</script>

<div class="col-2 mx-auto">
    <a class="btn btn-success" href="/item">Go to Property Page</a>
</div>
</body>

</html>