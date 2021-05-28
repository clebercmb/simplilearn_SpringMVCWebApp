<%--
  Created by IntelliJ IDEA.
  User: cleber
  Date: 5/27/21
  Time: 7:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Register Trainee</title>
</head>
<body>
    <div align="center">
        <h2>Save Trainee Details</h2>
        <sform:form method="post" action="addTrainee"  modelAttribute="traineeCommand"  >
            <table border="1px">
                <tr>
                    <td><sform:label path="traineeName">Trainee Name</sform:label></td>
                    <td><sform:input path="traineeName"/></td>
                </tr>
                <tr>
                    <td><sform:label path="marksScored">Marked Scored</sform:label></td>
                    <td><sform:input path="marksScored"/></td>
                </tr>
                <tr>
                    <td><sform:label path="contactNumber">Contact Number</sform:label></td>
                    <td><sform:input path="contactNumber"/></td>
                </tr>

                <tr>
                    <td><input type="submit"/></td>
                </tr>
            </table>

        </sform:form>
    </div>
</body>
</html>
