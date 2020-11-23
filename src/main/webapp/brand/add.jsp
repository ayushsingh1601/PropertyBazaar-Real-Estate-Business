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
        <h1> Types</h1>
        <form:form method="POST"
                   action="/brand/save" modelAttribute="brand">

            <table class="table-striped table">
                <form:hidden path="brand_id"/>
                <tr>
                    <td>Type name</td>
                    <td><form:input path="brand_name"/></td>
                </tr>
                <tr>
                    <td>
                        logo
                    </td>
                    <td>
                        <form:input path="logo"></form:input>
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-primary" value="Submit"/></td>
                </tr>
            </table>

        </form:form>
    </div>

</Body>

</html>