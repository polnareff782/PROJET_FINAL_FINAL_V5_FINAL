<%-- 
    Document   : Activer_DesactiverConseiller
    Created on : 8 mars 2021, 10:52:22
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
        <br>
        <div class="container">
            <h4 class="text-center" style ="color:#9376BD; ">Listes des conseillers:</h4> 
            <br><br>
            <table class="table">
                <thead>
                    <tr  class="table-primary">
                        <th>ID</th>
                        <th>LOGIN</th>
                        <th>PASSWORD</th>
                        <th>Nom</th>                    
                        <th>Prenom</th>
                        <th>Sexe</th>
                        <th>Etat</th>                   
                        <th>Activation Conseillers</th>
                    </tr>
                </thead>


                <tbody>

                    <c:forEach items="${users}" var="u">

                        <tr style="border: 1px solid black;">
                            <td>${u.id}</td>
                            <td>${u.login}</td>
                            <td>${u.mdp}</td>
                            <td>${u.person.nom}</td>
                            <td>${u.person.prenom}</td>
                            <td>${u.person.sexe}</td>
                            <td>${u.statut}</td>
                    <form action="ActiverConseiller" method="POST">
                        <input type="hidden" value="${u.id}" name="iduser">
                        <td><button  type="submit" class="btn btn-outline-success" onclick="" >Activer/Desactiver compte</button> </td>

                    </form>
                    </tr>

                </c:forEach>

                </tbody>
            </table>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <img src="img/activeconseiller.jpg"alt="Votre Carte bancaire">
            </div></div>
    </body>
</html>
