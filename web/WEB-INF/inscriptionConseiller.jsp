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
        <div class="container mt-4">
            <form action="InscriptionConseillerServlet" method="POST">
                <div class="card shadow-card">
                   <div class="row">
                    <div class=" title col-md-6 ">
                        <img src ="img/inscriptionclient.jpg">
                    </div>
                    <div class="col-md-4">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label for="inputNom" class="form-label">Nom</label>
                                <input type="text" id="nom" class="form-control" name="nom" required>
                            </div>
                            <div class="col-md-6">
                                <label for="inputprenom" class="form-label">Prenom</label>
                                <input type="text" id="prenom" class="form-control" name="prenom" required>
                            </div>
                        </div>


                        <div class="row mb-3 mt-2">
                            <div class="col-md-6">
                                <label for="login" class="form-label">Login</label>
                                <input type="text" id="login" class="form-control" name="login" required>
                            </div>

                            <div class="col-md-6">
                                <label for="mdp" class="form-label">Password </label>
                                <input type="password" id="mdp" class="form-control" name="mdp" required >
                            </div>

                        </div>

                        <div class="row mb-3 mt-2">

                            <div class="col-md-6">
                                <label for="telephone" class="form-label">Téléphone</label>
                                <input type="text" id="login" class="form-control" name="telephone" required>

                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Civilité</label>
                                <br>
                                <input  type="radio" name="sexe" value="femme" required>
                                <label  >Madame</label>

                                <input  type="radio" name="sexe" value="homme" required>
                                <label  >Monsieur</label>

                            </div>
                        </div>


                        <div class="row mb-3 mt-2">
                            <div class="col-md-6">
                                <label for="dateNaissance" class="form-label">Date de naissance</label>
                                <input type="date" id="dateNaissance" class="form-control" name="dateNaissance" required>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" id="email" class="form-control" name="email"required>
                            </div>
                        </div>


                        <div class="row mb-3 mt-2">
                            <label for="adresse" class="col-sm-3 form-label">Adresse</label>
                            <div class="col-sm-12 mb-2">

                                <input type="text"  class="form-control" name="adresse" required>
                            </div>
                        </div>



                        <div class="">
                            <button type="submit" class="btn btn-primary btn-block text-center" onclick="location.href='inscription'">Inscription</button>
                            <button type="button" class="btn btn-success btn-block text-center" onclick="location.href='login'">Se connecter</button>

                        </div>

                        <p class="text-center text-danger" id="msg"> ${msg} </p>
                    </div>
               </div> </div>
            </form> 
        </div>
                                      <%@ include file="Footer.jsp"%>

    </body>
</html>
