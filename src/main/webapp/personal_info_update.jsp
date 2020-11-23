<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<body>

<h1 class="text-center text-capitalize"> Update Detail</h1>
<!-- product-list -->
<div class="container">
    <form:form method="POST"
               action="/save_personal" modelAttribute="p">

        <table class="table-striped table col-8 mx-auto">

            <form:hidden path="person_id"/>

            <tr>
                <td>Firstname</td>
                <td><form:input path="firstname" class="form-control"/></td>
            </tr>
            <tr>
                <td>DOB</td>
                <td><form:input path="dob" class="form-control"/></td>
            </tr>

            <tr>
                <td>Lastname</td>
                <td><form:input path="lastname" class="form-control"/></td>
            </tr>
            <tr>
                <td>Gender</td>
                <td><form:input path="gender" class="form-control"/></td>
            </tr>
            <tr>
                <td>Zipcode</td>
                <td><form:input path="zipcode" class="form-control"/></td>
            </tr>


            <tr>
                <td>Address</td>
                <td><form:input path="address" class="form-control"/></td>
            </tr>
            <tr>
                <td>Adhar</td>
                <td><form:input path="adharno" class="form-control"/></td>
            </tr>
            <tr>
                <td>phoneno</td>
                <td><form:input path="phoneno" class="form-control"/></td>
            </tr>
            <tr>
                <td>
                    Email
                </td>
                <td>
                    <form:input path="email" class="form-control"/>
                </td>
            </tr>
            <tr>
                <td></td>
<td>
                    <input type="submit" name="submit" class="btn btn-success text-center" value="Update"/></td>
            </tr>
        </table>

    </form:form>

</div>
</Body>

</html>