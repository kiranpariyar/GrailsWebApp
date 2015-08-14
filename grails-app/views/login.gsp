<%--
  Created by IntelliJ IDEA.
  User: kiran
  Date: 8/14/15
  Time: 2:43 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0054)http://webapplayers.com/inspinia_admin-v2.2/login.html -->
<html>

<head>
    %{--<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--}%
    %{--<meta charset="utf-8">--}%
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="layout" content="main"/>

    <title>Social Media Analysis And Listening | Login</title>

    %{--<link href="css/bootstrap.min.css" rel="stylesheet">--}%
    %{--<link href="css/font-awesome.css" rel="stylesheet">--}%

    %{--<link href="css/animate.css" rel="stylesheet">--}%
    %{--<link href="css/style.css" rel="stylesheet">--}%
</head>

<body>

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

                <!-- <h4 class="logo-name">ocial Media Analysis And Listening</h4> -->

            </div>
            <h3>Welcome to Social Media Analysis And Listening</h3>
            <p>Login in. To see it in action.</p>
            %{--<form class="m-t" role="form" action="">--}%
            <g:form class="m-t" url="[controller:'user',action:'loginHandle']">
                <div class="form-group">
                    <input type="name" class="form-control" placeholder="Username" required="" value="${UserInstance?.username}">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" required="" value="${UserInstance?.password}">
                </div>
                %{--<button type="submit" class="btn btn-primary block full-width m-b">Login</button>--}%
                <g:submitButton class="btn btn-primary block full-width m-b" name="submitButton" value="Login" />
                <a href=""><small>Forgot password?</small></a>
                <p class="text-muted text-center"><small>Do not have an account?</small></p>
            </g:form>
        </div>
    </div>

<!-- Mainly scripts -->

</body>

</html>