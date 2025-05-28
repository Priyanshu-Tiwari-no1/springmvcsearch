<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Success</title>
</head>
<body> 

  <h2>Registration Successful!</h2>

  <p><strong>Student Info:</strong></p>
  <ul>
    <li>First Name: ${student.firstName}</li>
    <li>Last Name: ${student.lastName}</li>
    <li>Birthday: ${student.birthdayDate}</li>
    <li>Email: ${student.emailAddress}</li>
    <li>Phone Number: ${student.phoneNumber}</li>
    <li>Gender: ${student.gender}</li>
    <li>Courses:
        <ul>
            <c:forEach var="course" items="${student.courses}">
                <li>${course}</li>
            </c:forEach>
        </ul>
    </li>
  </ul>

</body>
</html>
