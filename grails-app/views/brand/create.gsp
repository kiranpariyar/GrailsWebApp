<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/16/15
  Time: 5:46 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main"/>

</head>

<body>

<div class="middle-box text-center loginscreen animated fadeInDown">
    <g:form class="m-t" controller = "brand" action = "create">
        <div class="form-group">
            <g:textField name="brandname" class="form-control" placeholder="brandname" />
        </div>
        <g:submitButton class="btn btn-primary block full-width m-b" name="submitButton" value="Save" />
    </g:form>
</div>
</body>
</html>