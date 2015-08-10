<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/10/15
  Time: 6:10 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
Hello Kiran
<g:each in="${doc}" var="tweet">
    <p>${tweet.tweet}    :    ${tweet.date}</p>
</g:each>

</body>
</html>