  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link rel="stylesheet" href="css/style.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
  </head>
  <body>
   			
   	<jsp:include page="header.jsp"/>

     <div class="container-fluid MID">
        <div class="container">
            <div class="row">
                    <div class="col-8 MDesign1">
                      
                    </div>
                    <div class="col-4">
                        <img src="images/crm-logo.png" alt="Girl in a jacket" class="image" width="400" height="400">
                    </div>
            </div>
        </div>
     </div>


     <div class="container-fluid">
        <div class="row py-3">
            <div class="col-6">
                 <h3>What does CRM do?</h3>
                        <ul>
                            <li>Actively tracks and manages customer information.</li>
                            <li>Connects your entire team from any device.</li>
                            <li>Intelligently captures customer emails.</li>
                            <li>Simplifies repetitive tasks so you can concentrate on leads.</li>
                            <li>Delivers instant insights and recommendations.</li>
                            <li>Extends and customises as your business grows.</li>
                            <li>A CRM system can give you a clear overview of your customers</li>
                            <li>CRM systems start by collecting a customer's website, email, telephone, and social media</li>
                        </ul>
            </div>
            <div class="col-6">
                  <h3>Why CRM matters?</h3>
                       <ul>
                            <li>CRM helps you ditch clunky processes and manual effort so you can get on with business.</li>
                            <li>You All find more leads, close more deals, keep more customers and grow your business.</li>
                            <li>One place to store all customer information means your conversations are always personal, relevant, and up to date.</li>
                            <li>Salesforce customers report 37% more sales revenue, 45% higher customer satisfaction, 43% better marketing ROI*.</li>
                       </ul>
            </div>
      </div>  
    
    <jsp:include page="footer.jsp"/>
    
  </body>
</html>