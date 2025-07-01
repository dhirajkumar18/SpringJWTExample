<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow p-4" style="width: 100%; max-width: 500px;">
        <h3 class="text-center mb-4">Student Form</h3>
        <form action="/students" method="post">
            <input type="hidden" name="id" value="${student.id}" />

            <div class="mb-3">
                <label for="name" class="form-label">Name</label>
                <input type="text" name="name" id="name" value="${student.name}" class="form-control" placeholder="Enter name" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" name="email" id="email" value="${student.email}" class="form-control" placeholder="Enter email" required>
            </div>

            <div class="mb-3">
                <label for="age" class="form-label">Age</label>
                <input type="number" name="age" id="age" value="${student.age}" class="form-control" placeholder="Enter age" required>
            </div>

            <div class="d-grid">
                <button type="submit" class="btn btn-success">Save</button>
            </div>
        </form>
    </div>
</d
