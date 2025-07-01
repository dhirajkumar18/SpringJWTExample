<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Student List</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped align-middle">
            <thead class="table-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Age</th>
					<th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="s" items="${students}">
                    <tr>
                        <td>${s.id}</td>
                        <td>${s.name}</td>
                        <td>${s.email}</td>
                        <td>${s.age}</td>
						<td> 
						    <a href="/students/new" class="btn btn-success btn-sm" title="Add New Student">
						        <i class="bi bi-plus-lg"></i>
						    </a> 
						    <a href="/students/edit/${s.id}" class="btn btn-primary btn-sm" title="Edit Student">
						        <i class="bi bi-pencil-square"></i>
						    </a>
						    <a href="/students/delete/${s.id}" class="btn btn-danger btn-sm" title="Delete Student">
						        <i class="bi bi-trash"></i>
						    </a>
						</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap 5 JS Bundle CDN (Optional for dynamic components) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
