<%-- 
    Document   : ProfilClient
    Created on : 17 mars 2021, 13:00:13
    Author     : marye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
    <link rel="stylesheet"
          href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css"
          integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">  
    <title>JSP Page</title>
</head>
<body>
        <%@include file="EnteteClient.jsp" %>

    <form action="majClient?id=${user.person.id}" method="Post">

        <br>
        <div class="container mt-2"> 
            <div class="content-login">
                <center>
                    <table class="lignesesp">
                        <tr>
                            <td><label for="id"  class="my-label">IMAGE</label></td>
                            <td><input type="file" name="img"  class="form-control" style="width: 250px" ></td>
                        </tr>
                        <tr>
                            <td><label for="id"  class="my-label">IDENTIFIANT</label></td>
                            <td><input type="text" name="id"  value="${user.person.id}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="nom"  class="my-label">NOM</label></td>
                            <td><input type="text" name="nom"  value="${user.person.nom}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">PRENOM</label></td>
                            <td> <input type="text" name="prenom"  value="${user.person.prenom}" class="form-control" style="width: 250px" disabled ></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">TELEPHONE</label></td>
                            <td> <input type="text" name="telephone"  value="${user.person.telephone}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">SEXE</label></td>
                            <td> <input type="text" name="sexe"  value="${user.person.sexe}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">DATE DE NAISSANCE</label></td>
                            <td> <input type="text" name="dateNaissance"  value="${user.person.dateNaissance}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">EMAIL</label></td>
                            <td> <input type="text" name="email"  value="${user.person.email}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">ADRESSE</label></td>
                            <td> <input type="text" name="adresse"  value="${user.person.address}" class="form-control" style="width: 250px" disabled></td>
                        </tr>
                        <tr>
                            <td><label for="login" class="my-label">LOGIN :</label></td>
                            <td><input type="text" name="login"  value="${user.login}" class="form-control" style="width: 250px" ></td>
                        </tr>

                        <tr>
                            <td><label for="login" class="my-label">PASSWORD</label></td>
                            <td><input type="text" id="mdp" name="mdp"  value="${user.mdp}" class="form-control" style="width: 250px"></td>
                        </tr>
                    </table>
                    <button type="submit"  class="btn btn-primary" >VALIDER</button>
                </center>
            </div> 
        </div>
    </form>
</body>
</html>
