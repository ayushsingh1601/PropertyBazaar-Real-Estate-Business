<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>

<body>




    <!-- product-list -->
    <div class="container">
        <form:form method="POST"
                   action="/feedback/save" modelAttribute="f">

            <table class="table-striped table">
                <form:hidden path="feedback_id"/>
                <form:hidden path="rid"/>
                <form:hidden path="item_id"/>
                <tr>
                    <td>Description</td>
                    <td><form:input path="description"/></td>
                </tr>
                <tr>
                    <td>
                        Rating
                    </td>
                    <td>
                        <form:input path="rating"></form:input>
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