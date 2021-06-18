<%-- 
    Document   : index
    Created on : 17 juin 2021, 10:12:51
    Author     : neveRs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/style.css" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet"
              href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
              integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    </head>
    <body>
        <body>
        <h2 class="text-center titre-perso my-font-family mt-4"><img src="image/Le-bateau-est-magnifique.jpg" width="10%" /> Bienvenue</h2>

        <h3 class="text-center titre-perso mt-60">Connexion</h3>

        <div class="container mt-4">
            <form action="Connexion" method="POST">
                <div style="margin:auto; width: 40%">
                    <div class="form-group">
                        <label class="label-perso"> Login : </label>
                        <input type="text" name = "login" value="${param['login']}" class="form-control center my-font-family" />
                    </div>
                    <div class="form-group">
                        <label class="label-perso"> Password : </label>
                        <input type="password" name = "password" class="form-control center my-font-family" />
                    </div>
                    <button type="submit" class="btn btn-block btn-info">Connexion</button>
                    <button type="button" class="btn btn-block btn-primary" onclick="window.location.href='inscription'"> S'inscrire</button>
                        
                    <div class="my-font-family center color-red">
                        <p>${msg}</p>
                    </div>
                </div>


            </form>
        </div>
    </body>
</html>
