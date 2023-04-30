<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/MyProject/Style/style.css">
   
    <title>Login Page</title>
</head>
<body class="body-login">
    <div class="container">
        <div class="login-left">
            <div class="login-header">
                <h1>Bienvenue</h1>
                <p>Veuillez vous connectez à notre plateforme</p>
            </div>
            <form action="${pageContext.request.contextPath}/Servletprojet" class="login-form" method="post">
    <div class="login-form-content">
        <div class="form-item">
            <label for="login">Entrez votre login</label>
            <input type="text" id="login" name="login" required>
        </div>
        <div class="form-item">
            <label for="password">Entrez votre mot de passe</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-item">
            <div class="checkbox">
                <input type="checkbox" name="rememberMeCheckbox" id="checkboxLabel" checked>
                <label for="rememberMeCheckbox" class="checkboxLabel">Se souvenir de moi </label>
            </div>
        </div>
        <button type="submit">Se connecter</button>
    </div>
</form>
            
        </div>
        <div class="login-right">
            <img src="/MyProject/Images/fun.jpg" alt="" >
        </div>
    </div>
</body>
</html> 