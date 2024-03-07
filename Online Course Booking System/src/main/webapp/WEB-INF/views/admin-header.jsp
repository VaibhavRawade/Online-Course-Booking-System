<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
</head>
<body>
			  <div class="container-fluid bg-primary text-white HeaderFooter">
			      <div class="container">
			          <div class="row">
			
			              <div class="col-3">
			                  <a href="homepage" style="color:white">CRM Application </a>
			              </div>
			
			              <div class="col-6">
			              </div>
			
			              <div class="col-3">
			                  <div class="btn-group navbar">
			                      <img src="/images/logo-admin1.jpg" height="40" width="40">
			                        &nbsp;
			                      <span style="color: black;font-size:19px;">ADMIN</span>
			                        &nbsp; &nbsp;
                  				   <a href="loginpage" style="color: black;font-size:19px;">logout</a>
			                  </div>
			              </div>
			          </div>
			      </div>
			   </div>
			   
			   
		 	 <nav class="navbar navbar-expand-sm bg-dark navbar-dark container-fluid">
		            <div class="container">
		                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
		                    <span class="navbar-toggler-icon"></span>
		                </button>
		                <div class="collapse navbar-collapse justify-content-center" id="collapsibleNavbar">
		                    <ul class="navbar-nav">
		                        </li>
		                  
		                        <li class="nav-item dropdown">
		                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Employees</a>
		                            <ul class="dropdown-menu">
		                                <li><a class="dropdown-item" href="addemp">Add Employee</a></li>
		                                <li><a class="dropdown-item" href="listemp">Employee's List</a></li>
		                            </ul>
		                        </li>
		                        <li class="nav-item dropdown">
		                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Products</a>
		                            <ul class="dropdown-menu">
		                  
		                                <li><a class="dropdown-item" href="addprd">Add Products</a></li>
		                                <li><a class="dropdown-item" href="listprd">Products's List</a></li>
		                            </ul>
		                        </li>
		                    </ul>
		                </div>
		            </div>
		        </nav>
		 	

</body>
</html>