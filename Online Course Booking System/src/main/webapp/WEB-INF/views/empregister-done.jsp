<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
	        <jsp:include page="admin-header.jsp"/>
	  
			<div class="EmpAddHeader">
				<div class="alert alert-info container" role="alert">
					<div class="row">
						<div class="col-4"></div>
						<div class="col-6">${error}</div>
						<div class="col-2"></div>
				  	</div>
			 	</div>
		 	</div>
			
	
	      <div class="container-fluid ">
                <div class="container">
                    <div class="row">
                        <div class="col-4"> </div>
                        <div class="col-4 d-flex justify-content-center">
                            <div class="login_div_design bg-light form13">
                       
                                <h3> Register Employee </h3> <br/>
                               <form action="registerEmployee" method="post">
                                <div class="mb-3">
                                    <label class="form-label">Enter Name</label>
                                    <input type="text" name="name1" class="form-control"/> 
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Enter Email</label>
                                    <input type="text" name="email1" class="form-control"/> 
 
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Enter Password</label>
                                    <input type="password" name="pass1" class="form-control"/> 
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Enter Phone No</label>
                                    <input type="text" name="phone1" class="form-control"/> 
                                   
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