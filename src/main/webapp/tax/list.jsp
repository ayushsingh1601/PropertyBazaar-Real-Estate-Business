<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Material Design Bootstrap</title>
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
<body>
<h1 class="text-info text-center">Income Tax Records</h1>


<table class="table table-striped  container">
<thead>
<th>Id</th>
<th>Amount</th>
<th>
    Date
</th>
<th>
    Penality
</th>
<th>
    Cash in hand
</th>
<th>
    Balace with banks
</th>
<th>
Other Assets
</th>
<th>
    Fixed Assets
</th>
<th>
    Inventory
</th>
<th>Loan and advances</th>
</thead>

    <c:forEach var="b" items="${items}">
        <tr>

            <td>${b.income_tax_id}</td>
            <td>${b.amount}</td>
            <td>${b.date}</td>
            <td>${b.penality}</td>
            <td>${b.cash_in_hand}</td>
            <td>${b.balance_with_banks}</td>
            <td>${b.other_assets}</td>
            <td>${b.fixed_assets}</td>
            <td>${b.inventory}</td>

            <td>${b.loans_and_advances}</td>
            <td><a href="/tax/update/${b.income_tax_id}" class="btn btn-outline-success">Update</a>
            <a href="/tax/remove/${b.income_tax_id}" class="btn btn-outline-danger">Delete</a> </td>
        </tr>
    </c:forEach>

</table>
<a class="btn btn-success float-right mr-5" href="/tax/add">ADD</a>
</body>

</html>