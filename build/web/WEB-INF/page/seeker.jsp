<%-- 
    Document   : seeker
    Created on : 08-May-2023, 10:51:19 AM
    Author     : frikky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<% 
       HttpSession sess=request.getSession(false);
       if(sess==null){
       response.sendRedirect("http://localhost:8080/OLP/fc/?action=view&page=index.jsp");
       }else{
       if(Integer.parseInt(sess.getAttribute("usertype_id").toString())==1){
         response.sendRedirect("http://localhost:8080/OLP/fc/?action=view&page=provider");
             }
           }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <title>JSP Page</title>
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
        <h1>Hello seeker!!</h1>
       
    </body>
</html>
