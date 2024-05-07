<%-- 
    Document   : index
    Created on : 05-May-2023, 10:03:26 AM
    Author     : frikky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" crossorigin="anonymous">
         <script src="js_files/getcountries.js" type="text/javascript"></script>
         <script src="js_files/Validator.js" type="text/javascript"></script>
         <script src="js_files/validate.js" type="text/javascript"></script>
        <title>JSP page</title>
    </head>
    <body>
         <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand text-light" href="#">OLP</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link text-light" href="index.jsp">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" href="#aboutid">About Us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-light" href="#contactid">Contact Us</a>
                            </li>
                        </ul>
             <form class="form-inline mx-auto my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>

            <div class="row">
                <div class="col-16">
              <!-- Button trigger modal -->
            <div class="container">
            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-dark btn-lg" data-toggle="modal" data-target="#myModal">Signup</button>

        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
        <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">OLP</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <div class="modal-body">
          <h2 class="fw-bold mb-5">Register Here</h2>
          <div class="modal-body">
                        <form action="http://localhost:8080/OLP/fc/?action=model&page=SignUpModel" method="POST" class="needs-validation">
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" class="form-control" name="fname" placeholder="First Name" id="fname" required=""/>
                            </div>
                            <div class="form-group">
                               <label for="lname">Last Name</label>
                                <input type="text" class="form-control" name="lname" placeholder="Last Name" id="lname" required/>
                            </div>
                            <div class="form-group">
                                <label for="dob">Date of Birth</label>
                                <input type="date" class="form-control" name="dob" placeholder="D.O.B" id="dob" required/>
                            </div>
                            <div class="form-group">
                                <label>Highest Qualification</label>
                                <select name="qualification" id="hq" class="form-control">
                                    <option value="">Highest Qualification</option>
                                    <option value="1">PostGraduate</option>
                                    <option value="2">UnderGraduate</option>
                                    <option value="3">HighSchool</option>
                                </select>
                            </div>
                            <div class="form-group"><!-- comment -->
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" placeholder="Enter Email" id="email" onblur="Validator();" required/>
                                <div class="valid-feedback">valid</div><!-- comment -->
                                <div class="invalid-feedback">Please provide email</div>
                            </div><!-- comment -->
                            <div class="form-group"><!-- comment -->
                                <label>Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter Password" id="pass" onblur="Validator();" required/>
                            </div><!-- comment -->
                            <div class="form-group">
                                <label class="radio-inline" for="checkbox">Gender</label><br>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Male">Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="gender" value="Female">Female
                                </label>
                            </div>
                            <div class="form-group">
                                <label>User Type</label>
                                <select name="user" id="type" class="form-control">
                                    <option value="">select type</option>
                                    <option value="1">Content Provider</option>
                                    <option value="2">Content Seeker</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Select Country</label>
                                <select class="form-control" name="countries" onclick="getcountries();" id="con">
                                    <option value=""> select country</option>
                                    
                                </select>
                            </div>
                           <!-- <div class="form-group">
                                <label>City</label>
                                <select name="city" id="state" class="form-control">
                                    <option value="">select city</option>
                                    <option value="1">Lucknow</option>
                                    <option value="2">Delhi</option>
                                    <option value="3">Mumbai</option>
                                    <option value="4">Banglore</option>
                                </select>
                            </div>-->

                            <div class="d-grid gap-2">
                               <!-- <button type="button" class="btn btn-primary">Create Account</button><!-- comment -->
                               <input type="submit" value="Sing Up" class="btn btn-primary btn-block"/>
                            </div>
                            
                        </form>
                </div>
           <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <input class="btn btn-primary" type="reset" value="Reset">
                    </div>
            </div>
        </div>
     </div>
  </div>
        </div>
      </div>
      </div> 
            <div class="col-16">            
             <!-- Trigger the modal with a button -->
             <button type="button" class="btn btn-dark btn-lg" data-toggle="modal" data-target="#myModals">Sign In</button>
            <!-- Modal -->
            <div class="modal fade" id="myModals" role="dialog">
            <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Sign In</h4>
           <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
             <div class="modal-body">
            <div class="col-lg-16">
            <h2 class="fw-bold mb-5">Sign In Now</h2>
            <form action="http://localhost:8080/OLP/fc/?action=model&page=LoginModel" method="POST">
            <!-- Email input -->
            <div class="form-outline mb-4">
                <label class="form-label" >Email address</label>
                <input type="email" id="em" class="form-control" name="email" onfocus="BorderColor(this,'red');" onblur="validator(this);" oninput="validator(this)" required=""/>
                    <span id="sp"></span>
                    <div id="errorMessage" style="color: red;display: none;">Fields should not be empty.</div>
            </div>
            <!-- Password input -->
            <div class="form-outline mb-4">
                <label class="form-label">Password</label>
                <input type="password" id="pss" class="form-control" name="password" oninput="validator(this)"  onblur="validator('pass',sp2);"required=""/>
                    <span id="sp2"></span>
                    <div id="errorMessage" style="color: red;display: none;">Fields should not be empty.</div>
            </div>
            <!-- Submit button -->
                        <button type="submit" class="btn btn-primary btn-block mb-4">
                          Sign In
                        </button>
                </form>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-cornsilk" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col">
                   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="https://www.hashmicro.com/blog/wp-content/uploads/2022/10/ERP-for-schools-1.jpg" alt="First slide" height="500">
             <div class="carousel-caption d-none d-md-block text-dark">
                 <p class="text" color="blue">“eLearning doesn't just "happen"! It requires careful planning and implementation.”</p>
                 </div>
                </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="https://franchiseindia.s3.ap-south-1.amazonaws.com/uploads/content/wi/art/615aea39021d1.jpeg" alt="Second slide" height="500">
            </div>
            <div class="carousel-item">
        <img class="d-block w-100" src="https://markinstyle.co.uk/wp-content/uploads/2021/10/Educational-Technology.jpeg" alt="Third slide" height="500" >
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                        </div>
                       <!-- <div class="col-md-2">
                            <ul>
                                <li>  “eLearning doesn't just "happen"! It requires careful planning and implementation.” - Anonymous</li>
                                <li> “It’s time to step up to the plate and get passionate about your work commit to making eLearning courses that don't bore people to tears, but instead inspire and motivate them to learn a new skill, change a certain behavior, or improve their performance.” - Cammy Bean</li>
                                <li>The most important principle for designing lively eLearning is to see eLearning design not as information design but as designing an experience.” - Cathy Moore</li>
                            </ul>
                        </div>-->
                    </div>
                </div>
        <div class="container-fluid">
            <div class="row">
                <div class="card" style="width:450px">
                <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQz7l-rkHjSUDfH4EJe33Kfuc2Yc2dt3M43OQ&usqp=CAU" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Biology Teacher</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
              </div>
                              <div class="card" style="width:450px">
                <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSs37ShxE9bg9U9VprBOPp67d1uNc774SUJhbuEURKJytyTSbD5NNf6nWE9e2_tte3W7A&usqp=CAU" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">John bills</h4>
                  <p class="card-text">Chemisrty Teacher</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
              </div>
                              <div class="card" style="width:450px">
                <img class="card-img-top" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbSBFCjFtfoi2NFiy0bjvM5SvxZwDjWnVHVcliuWcGYTjl6EyxfsDsj6GETIIC825ko_s&usqp=CAU" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">wills</h4>
                  <p class="card-text">Mathametics Teacher</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
              </div>
                              <div class="card" style="width:450px">
                <img class="card-img-top" src="https://images.hindustantimes.com/rf/image_size_640x362/HT/p2/2015/12/01/Pictures/_c34102da-9849-11e5-b4f4-1b7a09ed2cea.jpg" alt="Card image">
                <div class="card-body">
                  <h4 class="card-title">John Doe</h4>
                  <p class="card-text">Physics Teacher</p>
                  <a href="#" class="btn btn-primary">See Profile</a>
                </div>
              </div>
                </div>
            </div>

            <!-- footer -->
            <footer class="bg-dark text-light">
        <div class="container">
            <div class="row">
                <div class="col-8" id="aboutid">
                    <h5>About Us</h5>
                    <p>We provide Best Teaching Experiances 
                        with you to Bright future</p>
                </div>
                <div class="col" id="contactid">
                    <h5>Contact Us</h5>
                    <address>
                        Dasauli
                        Kursi Road<br>
                        Lucknow,Uttar Pradesh<br>
                        <abbr title="Phone">Mob:-</abbr> +91 6207731012
                    </address>
                </div>
                </div>
             <div class="row">
                        <div class="col text-center bg-dark">
                     <p>&copy; 2023 OLP.html. All rights reserved.</p>
                    </div>
                </div>
    </footer>
         <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"></script>
    </body>
</html>
