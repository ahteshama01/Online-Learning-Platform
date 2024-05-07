<%-- 
    Document   : provider
    Created on : 08-May-2023, 10:51:54 AM
    Author     : frikky
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<% 
         HttpSession sess=request.getSession(false);
         if(sess==null){
         response.sendRedirect("http://localhost:8080/OLP/fc/?action=view&page=index.jsp");
         }else{
         if(Integer.parseInt(sess.getAttribute("usertype_id").toString())==2){
         response.sendRedirect("http://localhost:8080/OLP/fc/?action=view&page=seeker");
             }
            }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Provider Page</title>
    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Logo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Profile</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
            </ul>
        </div>
        <form class="form-inline" action="http://localhost:8080/OLP/fc/?action=model&page=LogOutModel" method="post">
            <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Logout</button>
        </form>
    </nav>
        <div class="container">
            <div class="row">
            <div class="previous-posts col-8">
            <h3>Previous Posts</h3>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Post Title</h5>
                <p class="card-text">Post Content</p>
                <img src="path_to_image" class="card-img-top" alt="Post Image">
                <a href="#" class="btn btn-primary">View Comments</a>
            </div>
        </div>
            </div>
            <div class="post-form col-md-12">
        <h1>Post Page</h1>
        <form action="#" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="subject">Select Subject</label>
                <select class="form-control" id="subject" name="subject">
                    <option value="math">Math</option>
                    <option value="science">Science</option>
                    <option value="history">History</option>
                </select>
            </div>
            <div class="form-group">
                <label for="subcategory">Select Subcategory:</label>
                <select class="form-control" id="subcategory" name="subcategory">
                    <option value="algebra">Algebra</option>
                    <option value="geometry">Geometry</option>
                    <option value="calculus">Calculus</option>
                </select>
            </div>
            <div class="form-group">
                <label for="topic">Select Topic</label>
                <select class="form-control" id="topic" name="topic">
                    <option value="topic1">Topic 1</option>
                    <option value="topic2">Topic 2</option>
                    <option value="topic3">Topic 3</option>
                </select>
            </div>
            <div class="form-group">
                <label for="image">Upload Image</label>
                <input type="file" class="form-control-file" id="image" name="image">
            </div>
            <button type="submit" class="btn btn-primary">Post</button>
        </form>
            </div>
        <hr>
        <div class="comments col-md-6">
        <hr>

        <h3>View Comments</h3>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Commenter Name</h5>
                <p class="card-text">Comment Content</p>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title">Commenter Name</h5>
                <p class="card-text">Comment Content</p>
            </div>
        </div>
    </div>
            </div>
        </div>
    </body>
</html>