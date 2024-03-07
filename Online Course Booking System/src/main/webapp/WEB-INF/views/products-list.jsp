<%@ page language="java" import="java.util.*" import="in.sp.main.entity.Product" contentType="text/html; charset=ISO-8859-1"
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
		 	
		 	 <br/><br/>
		     <div class="container mt-3">
		        <center><h2>Products's List</h2></center>   
		        <br/>    
		        <table class="table table-light table-bordered table-striped">
			          	      <tr>
						          <th>Course Name</th>
						          <th>Course Syllabus</th>  
						          <th>Course Price</th>
						          <th>Trainer Name</th>
						          <th>Full Details</th>
						          <th>Update</th>
						          <th>Delete</th>
						       </tr>  
					      <%
							ArrayList<Product> products= (ArrayList<Product>) request.getAttribute("prdlist");
							for (Product product:products) 
							{
						       %>
						       <tr>
								    <td><%= product.getCoursename()%></td>
								    <td><%= product.getSyllabus()%></td>
								    <td>
								    	<del style="color:red"><%= product.getOriginalprice()%></del>
								    	<b><%= product.getDiscountedprice()%></b>
								    </td>
								     <td><%=product.getTrainersname()%></td>
								   	 <td style="text-align: center;">
										  <form action="prdDetails" method="post">
										    <input type="hidden" value="<%=product.getId()%>" name="id"/>
										    <input type="submit" value="DETAILS" class="button_y"/>
										  </form>
							        </td> 
							          	<td style="text-align: center;">
	                						 <form action="updatePrd" method="post">
										       <input type="hidden" value="<%=product.getId()%>" name="id"/>
										       <input type="submit" value="UPDATE" class="button_u"/>
										     </form>    						
	                    		    </td>
							        <td style="text-align: center;">
										  <form action="deletePrd" method="post">
										    <input type="hidden" value="<%=product.getId()%>" name="id"/>
										    <input type="submit" value="DELETE" class="button_d"/>
										  </form>
							        </td> 
							  <%
							}
						  %>
				 </table>
			</div>
			
   </body>
 </html>