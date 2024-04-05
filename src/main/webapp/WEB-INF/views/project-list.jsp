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
    <div class="container mt-5">
    <h1>${CMP_NAME} - ${DOMAIN_NAME} Project List</h1>
        <c:choose>
            <c:when test="${Project_LIST.size() > 0}">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Company</a></th>
                            <th scope="col">Domain Name</a></th>
                            <th scope="col">Project Name</a></th>
                           <th scope="col">Actions</th> 
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="project" items="${Project_LIST}">
                            <tr>
                                <td>${project.companyname}</td>
                                <td>${project.domainname}</td>
                                <td>${project.projectname}</td>
                               <td><a href="commercial?cmpName=${project.companyname}&dmName=${project.domainname}
                               &pName=${project.projectname}">Get Commercial</a>	</td> </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>
            <c:otherwise>
                <h3 class="text-center">No record exists!</h3>
            </c:otherwise>
        </c:choose>
        
        
    </div>
</body>
</html>