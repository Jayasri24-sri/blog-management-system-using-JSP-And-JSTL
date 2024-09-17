<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Blog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-4">
    <h1 class="mb-4">Edit Blog</h1>
    <form action="${pageContext.request.contextPath}/blogs/edit" method="post">
        <input type="hidden" name="id" value="${blog.id}"/>

        <div class="form-group">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" class="form-control" value="${blog.title}" required/>
        </div>

        <div class="form-group">
            <label for="content">Content:</label>
            <textarea id="content" name="content" class="form-control" rows="5" required>${blog.content}</textarea>
        </div>

        <div class="form-group">
            <label for="author">Author:</label>
            <input type="text" id="author" name="author" class="form-control" value="${blog.author}" required/>
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    <a href="${pageContext.request.contextPath}/blogs" class="btn btn-secondary mt-3">Back to Blog List</a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
