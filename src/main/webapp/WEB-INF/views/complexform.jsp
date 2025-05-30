<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Form</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          crossorigin="anonymous">
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-8">
            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Registration Form</h4>
                </div>
                <div class="card-body">
                    <form:form action="handleform" modelAttribute="student" method="post">

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="firstName">First Name</label>
                                <form:input path="firstName" cssClass="form-control" id="firstName" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="lastName">Last Name</label>
                                <form:input path="lastName" cssClass="form-control" id="lastName" />
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="birthdayDate">Birthday</label>
                                <form:input path="birthdayDate" cssClass="form-control" id="birthdayDate" type="date" />
                            </div>
                            <div class="form-group col-md-6">
                                <label>Gender</label><br />
                                <div class="form-check form-check-inline">
                                    <form:radiobutton path="gender" value="Female" cssClass="form-check-input" id="femaleGender" />
                                    <label class="form-check-label" for="femaleGender">Female</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <form:radiobutton path="gender" value="Male" cssClass="form-check-input" id="maleGender" />
                                    <label class="form-check-label" for="maleGender">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <form:radiobutton path="gender" value="Other" cssClass="form-check-input" id="otherGender" />
                                    <label class="form-check-label" for="otherGender">Other</label>
                                </div>
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="emailAddress">Email</label>
                                <form:input path="emailAddress" cssClass="form-control" id="emailAddress" type="email" />
                            </div>
                            <div class="form-group col-md-6">
                                <label for="phoneNumber">Phone Number</label>
                                <form:input path="phoneNumber" cssClass="form-control" id="phoneNumber" />
                            </div>
                        </div>
                        
                        <div class="card">
                          <div class="card-body">
                              <p>Your address</p>
                              <div class="form-group">
                                 <input 
                                        name="address.street"
                                        type="text" 
                                        class="form-control" 
                                        placeholder="Enter street"
                                        />
                              </div>
                              
                               <div class="form-group">
                                 <input 
                                       name="address.city"
                                       type="text" 
                                       class="form-control" 
                                       placeholder="Enter city" 
                                       />
                              </div>
                          </div>
                        </div>

                        <div class="form-group">
                            <label for="choose">Preferred Languages</label>
                            <form:select path="courses" cssClass="form-control" multiple="true" id="choose">
                                <form:option value="java" label="JAVA" />
                                <form:option value="python" label="PYTHON" />
                                <form:option value="c++" label="C++" />
                                <form:option value="c#" label="C#" />
                                 <form:option value="javascript" label="JAVASCRIPT" />
                                <form:option value="css" label="CSS" />
                                
                            </form:select>
                            <small class="form-text text-muted">Hold down Ctrl (Windows) or Command (Mac) to select multiple options.</small>
                        </div>

                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
                        </div>

                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
