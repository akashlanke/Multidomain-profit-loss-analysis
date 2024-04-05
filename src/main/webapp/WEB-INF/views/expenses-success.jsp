<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title> User Details</title>
    <link rel="stylesheet" href="style.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="${pageContext.request.contextPath}/assets/stylesheet/styles2.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
   <body>
    <div class="container">
    <h1>${PROJECTNAME}  Expenses List</h1>
           
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Expenses Type</a></th>
                            <th scope="col">Amount</a></th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td>Taxes</td>
                                <td>${Expenses.taxes}</td>
                                </tr>
                                <tr>
                                <td>Wifi</td>
                                <td>${Expenses.wifi}</td>
                                </tr>
                                <tr>
                                <td>Salary</td>
                                <td>${Expenses.salary}</td>
                                </tr>
                                <tr>
                                <td>Marketing</td>
                                <td>${Expenses.marketing}</td>
                                </tr>
                                <tr>
                                <td>Maintenance</td>
                                <td>${Expenses.maintenance}</td>
                                </tr>
                    </tbody>
                    </tbody>
                </table>
                
                <c:forEach var="project" items="${SUGGESTION}">
                            <tr >
                                <td>${project}</td></tr></br>
                                
                        </c:forEach>
                
</body>
</html>