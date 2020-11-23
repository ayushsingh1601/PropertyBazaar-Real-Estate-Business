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



    <!-- product-list -->
    <div class="container mt-5">
        <h1> Add Property</h1>
        <form:form method="POST"
                   action="" modelAttribute="item">

            <table class="table-striped table">
                <tr>
                    <td>Type</td>

                    <td><form:select path="brand_id" class="form-contol col-5" items="${bl}"/></td>
                </tr>
              <tr>
                  <td>Name</td>
                  <td><form:input path="name"/></td>
              </tr>
                <tr>
                    <td>
                        Description
                    </td>
                    <td><form:input path="description"/>    </td>
                </tr>
                <tr>
                    <td>Rating</td>
                    <td><form:input path="rating"/></td>
                </tr>
                <tr>
                    <td>Image Url</td>
                    <td><form:input path="imgurl"/></td>
                </tr>
                <tr>
                    <td>Discount</td>
                    <td><form:input path="discount"/></td>
                </tr>
                <tr>
                    <td>
                        Sold qt
                    </td>
                    <td>
                        <form:input path="sold_qt"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        Cost Price
                    </td>
                    <td>
                        <form:input path="cost_price"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mrp
                    </td>
                    <td>
                        <form:input path="mrp"/>
                    </td>
                </tr>
                <tr>
                    <td>Availabe Quantity</td>
                    <td><form:input path="qt_avail"/></td>
                </tr>
                <tr>
                    <td>
                        Locality
                    </td>
                    <td>
                        <form:input path="category"/>
                    </td>
                </tr>

                <tr>

                    <td></td>
                    <td><input type="submit" class="btn btn-primary" value="Submit"/></td>
                </tr>
            </table>

        </form:form>
    </div>
</div>
</Body>

</html>