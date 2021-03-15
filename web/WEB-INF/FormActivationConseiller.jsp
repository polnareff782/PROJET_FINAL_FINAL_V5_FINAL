<%-- 
    Document   : FormActivationConseiller
    Created on : 8 mars 2021, 16:14:28
    Author     : Nathan Ghozlan
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link rel="stylesheet" href="style_1.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/c441cb6851.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style_1.css">

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>

    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-white bg-white">
            <div class="collapse navbar-collapse " id="navbarNav">
                <ul class="navbar-nav nav-fill w-100">
                    <li class="nav-item active">
                        <a class="nav-link active font-weight-bold px-3 fas fa-home fa-2x material-icons "style ="color:blue; "href="AccueilServlet" ></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  font-weight-bold px-3 fas fa-power-off fa-2x material-icons" style ="color:blue; " href="DeconnexionServlet">  <span> <h6>
                                    ${user.person.nom}
                                </h6>
                            </span>
                        </a> 
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container text-center">
            <h5 class="text-center" style ="color:#B1476D;"> Activation & Désactivation du compte de ${user.person.nom}</h5>
            <div class="row"> 
                <div class="col-md-6">
                    <img src="img/desactivconseiller.jpg" alt="Votre Carte bancaire">

                </div>
                <div class="col-md-6">
                    <form action="FormActiverConseiller" method="POST">
                        <br><br><br><br>

                        <div class="mb-3">
                            <label for="nom" class="my-label">Nom:</label>
                            <label>&nbsp;${user.person.nom}</label>
                        </div>
                        <div class="mb-3">
                            <label for="prenom" class="my-label">Prenom:</label>
                            <label>&nbsp;${user.person.prenom}</label>
                        </div>
                        <div class="mb-3">
                            <label for="login" class="my-label">Login:</label>
                            <label>&nbsp;${user.login}</label>
                        </div>
                        <div class="mb-3">
                            <label for="mdp" class="my-label">Password:</label>
                            <label>&nbsp;${user.mdp}</label>
                        </div>
                        <div class="mb-3">
                            <label for="Etat" class="my-label">Etat <br>1-Activer <br>0-Désactiver</label><br>
                            <input type="text" class=" mt-2" value="${user.statut}" name="statut">
                        </div>



                        <div class="text-center">
                            <button type="submit" class="btn btn-primary ">Valider état</button>
                            <button type="reset" class="btn btn-danger ">Annuler</button>

                            <input type="hidden" name="userId" value="${user.id}">
                        </div>

                        <p class="text-center text-danger" id="msg"> ${msg} </p>


</form>
                </div>
            </div>    
        </div>
    



</body>
</html>
