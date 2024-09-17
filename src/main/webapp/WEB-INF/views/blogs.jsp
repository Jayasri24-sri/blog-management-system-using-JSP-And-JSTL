<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Blog List</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h1 class="mb-4">Blog List</h1>
    <a href="${pageContext.request.contextPath}/blogs/create" class="btn btn-primary mb-3">Create New Blog</a>
    <table class="table table-striped table-bordered">
        <thead class="thead-dark">
        <tr>
            <th>Title</th>
            <th>Content</th>
            <th>Author</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="blog" items="${blogs}">
            <tr>
                <td><c:out value="${blog.title}"/></td>
                <td><c:out value="${blog.content}"/></td>
                <td><c:out value="${blog.author}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/blogs/edit/${blog.id}" class="btn btn-warning btn-sm">Edit</a>
                    <a href="${pageContext.request.contextPath}/blogs/delete/${blog.id}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this blog?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
