<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</head>
  <body>
  	
  	<%
  			String error=(String)request.getAttribute("error");	
  	%>
   	<jsp:include page="header.jsp"/>
   	
     <div class="container-fluid loginformHeight">
            <div class="container">
                <div class="row">
                    <div class="col-4"> </div>
                    <div class="col-4 d-flex justify-content-center">
                        <div class="login_div_design bg-light form12">
                      	<%
                      		if(error!=null)
                      		{
                      			%>
                      				<h4 style="color:red;font-size:22px;">${error}</h4>
                      			<%
                      			
                      		}
                      	 %>
                            <form action="loginForm" method="post">
                            	<h3> Login Here </h3> <br/>
	                            <div class="mb-3">
	                                <label class="form-label">Enter Email</label>
	                                <input type="text" name="email1" class="form-control"/> 
	                            </div>
	                            <div class="mb-3">
	                                <label class="form-label">Enter Password</label>
	                                <input type="password" name="pass1" class="form-control"/> 
	                                <div class="form-text"> We will not share your email id with anyone... </div>
	                            </div>
	                            <input type="submit" value="Login" class="btn btn-primary" />
                            </form>
                        </div>
                    </div>
                    <div class="col-4"> </div>
                </div>
            </div>
        </div>
  </body>
</html>