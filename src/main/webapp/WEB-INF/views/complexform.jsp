<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width-device-width, initial-scale-1, shrink-to-fit-no">

<!-- bootstrap css -->
<link rel="stylesheet" 
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
      integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
      crossorigin="anonymous">

</head>
<body>

  <div class="container mt-4">
  <div class="row">
     <div class="col-md-6 offset-md-3">
         <div class="card">
             <div class="card-body">
      
       <h2 class="mb-4 text-center">Registration Form</h2>
  <form class="needs-validation" action="handleform" method="post" enctype="multipart/form-data" novalidate>
  <div class="mb-3">
    <label for="fullName" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="fullName" name="fullName" required>
    <div class="invalid-feedback">Full Name is required.</div>
  </div>

  <div class="mb-3">
    <label for="email" class="form-label">Email address</label>
    <input type="email" class="form-control" id="email" name="email" required>
    <div class="invalid-feedback">Please enter a valid email address.</div>
  </div>

  <div class="mb-3">
    <label for="password" class="form-label">Password</label>
    <input type="password" class="form-control" id="password" name="password" minlength="6" required>
    <div class="invalid-feedback">Password must be at least 6 characters long.</div>
  </div>

  <div class="mb-3">
    <label for="gender" class="form-label">Gender</label>
    <select class="form-select" id="gender" name="gender" required>
      <option value="">Choose...</option>
      <option value="female">Female</option>
      <option value="male">Male</option>
      <option value="other">Other</option>
    </select>
    <div class="invalid-feedback">Please select a gender.</div>
  </div>

  <div class="mb-3">
    <label class="form-label">Skills</label><br>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name="skills" value="HTML" id="skillHTML">
      <label class="form-check-label" for="skillHTML">HTML</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name="skills" value="CSS" id="skillCSS">
      <label class="form-check-label" for="skillCSS">CSS</label>
    </div>
    <div class="form-check form-check-inline">
      <input class="form-check-input" type="checkbox" name="skills" value="JavaScript" id="skillJS">
      <label class="form-check-label" for="skillJS">JavaScript</label>
    </div>
  </div>

  <div class="mb-3">
    <label for="resume" class="form-label">Upload Resume</label>
    <input class="form-control" type="file" id="resume" name="resume">
  </div>

  <div class="mb-3">
    <label for="bio" class="form-label">Bio</label>
    <textarea class="form-control" id="bio" name="bio" rows="4"></textarea>
  </div>

  <button type="submit" class="btn btn-primary">Register</button>
</form>
              </div>
         </div>
     </div>
  </div>
 

</div>
 
</body>
</html>