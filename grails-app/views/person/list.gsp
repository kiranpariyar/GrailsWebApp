<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/11/15
  Time: 2:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
    <p>Name      Address</p>
    <g:each in="${person}" var="p">
        <p>${p.name}  ${p.address}</p>
    </g:each>
</body>
</html>