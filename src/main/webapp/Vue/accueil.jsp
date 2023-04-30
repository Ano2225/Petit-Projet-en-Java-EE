<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/MyProject/Style/style.css">
    
    <title>Page Accueil</title>
</head>
<body class="body-accueil">
    <h1 id="h1">Bienvenue </h1>
    <div class="liste">
        <div class="list-child">
        <p>Connecté :</p>
        <div class="liste-ul">
            <ul>
                <li> Login : <%= session.getAttribute("nom") %> </li>
                <li> Mot de passe : <%= session.getAttribute("mdp") %></li>
            </ul>
        </div>
        </div>
    </div>
</body>
</html>