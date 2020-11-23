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
<h1 class="text-center">Agent</h1>

<div class="row">
    <div class="col-3 text-center ml-auto">

        <h1 class="text-info">Filter</h1>
        <center>
            <form action="/filteremp" method="get" modelAttribute="filter">

<%--                <% String[] textFields = {"e.salary", "p.phoneno", "p.email", "e.username", "p.firstname", "p.lastname", "e.username", "e.balance", "p.gender", "p.zipcode", "age"};--%>
<%--                    for (int j = 0; j < textFields.length; j++) { %>--%>


<%--                <div class="md-form">--%>

<%--                    <label for="<%=textFields[j]%>"><%=textFields[j]%>--%>
<%--                    </label>--%>
<%--                    <INPUT TYPE=TEXT NAME=<%=textFields[j]%> id="<%=textFields[j]%>" class="form-control col-5">--%>

<%--                </div>--%>
<%--                <% } %>--%>


    <div class="md-form">

        <label for="e.salary">salary
        </label>
        <INPUT TYPE=TEXT NAME=e.salary id="e.salary" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="p.phoneno">phoneno
        </label>
        <INPUT TYPE=TEXT NAME=p.phoneno id="p.phoneno" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="p.email">email
        </label>
        <INPUT TYPE=TEXT NAME=p.email id="p.email" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="e.username">username
        </label>
        <INPUT TYPE=TEXT NAME=e.username id="e.username" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="p.firstname">firstname
        </label>
        <INPUT TYPE=TEXT NAME=p.firstname id="p.firstname" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="p.lastname">lastname
        </label>
        <INPUT TYPE=TEXT NAME=p.lastname id="p.lastname" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="e.username">username
        </label>
        <INPUT TYPE=TEXT NAME=e.username id="e.username" class="form-control col-5">

    </div>





    <div class="md-form">

        <label for="p.gender">gender
        </label>
        <select id="p.gender" name="p.gender" class="form-contol col-5 mdb-select">
            <option value="m">Male</option>
            <option value="f">Female</option>
        </select>

    </div>



    <div class="md-form">

        <label for="p.zipcode">zipcode
        </label>
        <INPUT TYPE=TEXT NAME=p.zipcode id="p.zipcode" class="form-control col-5">

    </div>



    <div class="md-form">

        <label for="age">age
        </label>
        <INPUT TYPE=TEXT NAME=age id="age" class="form-control col-5">

    </div>



    <button type="submit" class="btn btn-secondary">Search</button>
            </form>
        </center>


    </div>
    <div class="col-8 mr-auto">
        <table class="table table-striped mx-2">
            <thead>
            <th>S. No</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Username</th>
            <th>Email</th>
            <th>Phone no</th>
            <th>Salary</th>
            <th>Action</th>
            </thead>
            <c:forEach var="b" items="${items}">
                <tr>
                    <td>${b.employee_id}</td>
                    <td>${b.p.firstname}</td>
                    <td>${b.p.lastname}</td>
                    <td>${b.username}</td>
                        <%--            <td>${b.p.address}</td>--%>
                        <%--            <td>${b.p.adharno}</td>--%>
                        <%--            <td>${b.p.dob}</td>--%>
                    <td>${b.p.email}</td>
                    <td>${b.p.phoneno}</td>
                        <%--            <td>${b.p.zipcode}</td>--%>
                        <%--            <td>${b.balance}</td>--%>
                    <td>${b.salary}</td>
                    <td>
                        <a class="btn btn-sm btn-primary  text-dark" href="/update/personal/${b.p.person_id}">Update</a>
                        <a class="btn btn-sm btn-secondary  text-dark" href="/employee/${b.employee_id}">View </a>
                        <a class="btn btn-sm btn-danger  text-dark" href="/employee/remove/${b.employee_id}">Delete</a>

                    </td>
                </tr>


            </c:forEach>

        </table>
        <div class="container">
            <a class="btn btn-lg btn-success float-lg-right text-dark" href="/employee/add">ADD </a>
        </div>
    </div>
</div>


</body>

</html>