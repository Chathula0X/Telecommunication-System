<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="models.StaffMember"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Staff Member</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
    
    		.container {
   				 max-width: 600px;
    			margin: auto;
			}
			
			.card {
			    border: 1px solid #ccc;
			    border-radius: 8px;
			    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
			    background-color: rgba(255, 255, 255, 0.8);
			    rgba(255, 255, 255, 0.5);
			}
			
			.card-header {
			    background-color: #5F5F5F;
			    color: #fff;
			    border-bottom: 1px solid #ccc;
			    border-radius: 8px 8px 0 0;
			    padding: 10px 20px;
			}
			
			.card-body {
			    padding: 20px;
			}
			
			.form-label {
			    font-weight: bold;
			}
			
			.btn-primary {
			    background-color: #5F5F5F;
			    border: none;
			}
			
			.btn-primary:hover {
			    background-color:black;
			}
			
			.btn-primary:focus {
			    box-shadow: none;
			}
			
			.btn-primary:active {
			    background-color: #0056b3;
			}
			
    
    	body {
				background-image: url('image/img1.jpg');
			
			}

	
    </style>
    
    
</head>
<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Staff Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
    




    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h3>Edit Staff Member</h3>
            </div>
            <div class="card-body">
                <% StaffMember staffMember = (StaffMember) request.getAttribute("staffMember"); %>
                <form action="staff" method="post">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="id" value="<%= staffMember != null ? staffMember.getStaffMemberId() : "" %>">

                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" id="name" name="name" required value="<%= staffMember != null ? staffMember.getName() : "" %>">
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required value="<%= staffMember != null ? staffMember.getAddress() : "" %>">
                    </div>
                    <div class="mb-3">
                        <label for="phoneNumber" class="form-label">Phone Number</label>
                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" required value="<%= staffMember != null ? staffMember.getPhoneNumber() : "" %>">
                    </div>
                    <div class="mb-3">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" class="form-control" id="age" name="age" required value="<%= staffMember != null ? staffMember.getAge() : "" %>">
                    </div>
                    <div class="mb-3">
                        <label for="gender" class="form-label">Gender</label>
                        <select class="form-control" id="gender" name="gender">
                            <option value="Male" <%= staffMember != null && staffMember.getGender().equals("Male") ? "selected" : "" %>>Male</option>
                            <option value="Female" <%= staffMember != null && staffMember.getGender().equals("Female") ? "selected" : "" %>>Female</option>
                            <option value="Other" <%= staffMember != null && staffMember.getGender().equals("Other") ? "selected" : "" %>>Other</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">Update Staff Member</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
