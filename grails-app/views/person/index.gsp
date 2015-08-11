<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/7/15
  Time: 3:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>

<g:form controller="person" action="save">
    <label>Name: </label>
    <g:textField name="name"/><br/>
    <label>Address : </label>
    <g:textField name="address"/><br/>
    <g:actionSubmit value="Save"/>
</g:form>

</body>
</html>