<%@ page language="java" import="in.sp.main.entity.Product" import="java.util.*" contentType="text/html;charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@  taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
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
			<jsp:include page="employee-header.jsp"/>
			
			<% 
		 	String str=(String)request.getAttribute("error");
			int value1=0;
		 	if(str!=null)
		 	{
		 		%>
					<div class="EmpAddHeader">
				       <div class="alert alert-info container" role="alert">
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
			
			<br/>
            <div class="container-fluid ">
                <div class="container">
                    <div class="row">
                        <div class="col-4"> </div>
                        <div class="col-4 d-flex justify-content-center">
                            <div class="login_div_design bg-light form13">
                       
                                  <h3>Customer Enquiry</h3>
                              	  <br/>
		         				  <form:form action="registerCustomer" method="post" modelAttribute="model-attribute">
										<div class="mb-3">
											<label class="form-label">Enter Full Name</label>
											<form:input path="name" cssClass="form-control" />
											<form:errors path="name" cssClass="error_message_design"/>
										</div>
										
										<div class="mb-3">
											<label class="form-label">Enter Phone</label>
											<form:input path="phone" cssClass="form-control" />
											<form:errors path="phone" cssClass="error_message_design" />
										</div>
										
										<div class="mb-3">
											<label class="form-label">Enter Course</label>
												<form:select path="intrestedcourse" cssClass="form-select">
													<form:option value="">Selected Course</form:option>
													<form:options items="${courses_list}"/>
												</form:select>
										</div>
										
										<div class="mb-3">
											<label class="form-label">Enquiry Date</label>
											<form:input type="date" path="enquirydate" cssClass="form-control" />
											<form:errors path="enquirydate" cssClass="error_message_design"/>
							     		</div>
							     		
										<div class="mb-3">
											<label class="form-label">Enquiry Type</label>
											<form:select path="enquirytype" cssClass="form-select">
												<form:option value="">Select Enquiry Type</form:option>
												<form:option value="Call">Call</form:option>
												<form:option value="Mail">Mail</form:option>
												<form:option value="Website">Website</form:option>
												<form:option value="Social Networking">Social Networking</form:option>
											</form:select>													
										</div>
										
										<div class="mb-3">
											<label class="form-label">Status</label>
											<form:select path="status" cssClass="form-select">
												<form:option value="">Select Status</form:option>
												<form:option value="1">Interested</form:option>
												<form:option value="0">Not - Interested</form:option>
												<form:option value="8">Purchased</form:option>
											</form:select>
									       <form:errors path="status" cssClass="error_message_design" />
								        </div>
										<div class="mb-3">
											<label class="form-label">Discussion</label>
											<form:textarea path="discussion" cssClass="form-control" />
											<form:errors path="discussion" cssClass="error_message_design"/>
										</div>
										
										<div class="mb-3">
											<label class="form-label">Call To</label>
											<form:select path="callto" cssClass="form-select">
												<form:option value="">Call To</form:option>
												<form:option value="Customer to Company">Customer to Company</form:option>
												<form:option value="Company to Customer">Company to Customer</form:option>
												<form:errors path="discussion" cssClass="error_message_design"/>
											</form:select>
										</div>
										
										<input type="submit" value="Register" class="btn btn-primary" />
									</form:form>
                            </div>
                        </div>
                        <div class="col-4"> </div>
                    </div>
                </div>
            </div>
        </body>
</html>