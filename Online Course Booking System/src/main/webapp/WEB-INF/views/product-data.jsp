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

			<br></br>
		 	<div class="container-fluid">
		 		<br></br>
		 		<div class="row">
		 			<div class="col-4"></div>
		 			<div class="col-4">
		 			  <table style="background-color:purple;color:white" border="3">
		 			  	<tr>
		 					<td><h4>Course Name:</h4></td>
		 				    <td><h4>${product.getCoursename()}</h4></td>
		 				</tr>
		 				<tr>
		 					<td><h4>Course Price:</h4></td>
		 					<td>
		 						<del style="color:red">${product.getOriginalprice()}</del>
		 						<h4>${product.getDiscountedprice()}</h4>
		 					</td>
		 				</tr>
		 				<tr>
		 					<td><h4>Course Validity:</h4></td>
		 					<td><h4>${product.getCoursevaliditiy()}</h4></td>
		 				</tr>
		 				<tr>
		 					<td><h4>Course Syllabus:</h4></td>
		 					<td><h4>${product.getSyllabus()}</h4></td>
		 				</tr>
		 				<tr>
		 					<td><h4>Trainer Name:</h4></td>
		 					<td><h4>${product.getTrainersname()}</h4></td>
		 				</tr>
		 				<tr>
		 					<td><h4>Trainer Details:</h4></td>
		 					<td><h4>${product.getTrainersdetails()}</h4></td>
		 				</tr>
		 			</table>
		 		  </div>
		 		  <div class="col-4"></div>
		 	</div>
		 	<br/>
		 	<div class="container instruction">
		 		<h3>Important Instructions</h3>
		 		<span style="color:red;font-size:19px;"><b>Do not share id and password with anyone otherwise account will get blocked</b></span>
		 	</div>
   </body>
 </html>