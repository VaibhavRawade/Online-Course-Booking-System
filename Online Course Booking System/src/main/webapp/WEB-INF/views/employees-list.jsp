<%@ page language="java" import="java.util.*" import="in.sp.main.entity.Employee" contentType="text/html; charset=ISO-8859-1"
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
		 	<jsp:include page="admin-header.jsp"/>
		 	
		 	<%
		 			 	String str=(String)request.getAttribute("error");
		 			 			 	if(str!=null)
		 			 			 	{
		 			 	%>
				<div class="EmpAddHeader">
					<div class="alert alert-danger container" role="alert">
						<div class="row">
							<div class="col-4"></div>
							<div class="col-6">${error}</div>
							<div class="col-2"></div>
					  	</div>
				 	</div>
			 	</div>
			 	<%
			 	}
			 	%>
		 	
		     <br/><br/> 	
		     <div class="container mt-3">
		       <center><h2>Employee's List</h2></center>   
		       <br/>     
		        <table class="table table-light table-bordered table-striped">
			          	      <tr>
						          <th>Name</th>
						          <th>Email</th>  
						          <th>Phone</th>
						          <th>Update</th>
						          <th>Delete</th>
						       </tr>  
					      <%
  					      ArrayList<Student> users = (ArrayList<Student>) request.getAttribute("emplist");
  					        					      					for (Student user: users) 
  					        					      					{
  					      %>
						       <tr>
								    <td><%= user.getName() %></td>
								    <td><%= user.getEmail() %></td>
								    <td><%= user.getPhone() %></td>
								   	<td style="text-align: center;">
	                						 <form action="updateEmp" method="post">
										       <input type="hidden" value="<%=user.getEmail()%>" name="email"/>
										       <input type="submit" value="UPDATE" class="button_u"/>
										     </form>    						
	                    		    </td>
							        <td style="text-align: center;">
										  <form action="deleteEmp" method="post">
										    <input type="hidden" value="<%=user.getId()%>" name="id"/>
										    <input type="submit" value="DELETE" class="button_d"/>
										  </form>
							        </td> 
							   </tr>
							  <%
							}
						  %>
				 </table>
			</div>
			
   </body>
 </html>