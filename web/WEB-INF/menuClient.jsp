
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>

        <%@ include file="EnteteClient.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/c441cb6851.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="style_1.css">
    </head>
    <body>
        <div class="container mb-3 mt-3">
            <div class="row">
                <div class="col-md-5">
                    <form>
                        <div class="row">
                            <div class="form-group col-md-6 mb-2">
                                <div class="title-zone text-primary">
                                    <h5>COMPTES BANCAIRES</h5></div>
                                <label>Compte Bancaire</label>
                                <p name="numcompte" class="card-text" style="color:grey"> ${comptes.numcompte}<br></p>
                                <br>
                                <div class="form-group col-md-8 px-3"> 
                                    <label>Carte Bancaire</label>
                                    <p name="numcarte" class="card-text" style="color:grey">${comptes.numcarte}<br></p>
                                </div>
                            </div>  
                        </div>
                    </form>
                </div>
                <div class="col-md-2">

                    <br><br>
                    <label class="my-label" style="color:blue">Etat de  carte</label>
                    <div>

                        <%
                            String etat = (String) request.getAttribute("etat");

                            if (etat.equals("false")) {

                                out.println(" Désactivé");
                            } else {
                                out.println("Activé");
                            }


                        %>

                        <%   String opposition = (String) request.getAttribute("opposition");
                            if (opposition.equals("true")) {

                                out.println("(Suspendue)");
                            }%>

                    </div>
                </div>
            </div> 
                            <br><br>
            <div class="row">
                <form>
                    <div class=" col-sm-4 text-warning">
                        <h4>Livret A</h4>
                        <p name="livretA" class="card-text" style="color:grey"> ${comptes.livretA}</p>
                    </div> 
                </form>
                        <div class="col-sm-3"></div>
                <div class="col-sm-5">
                    <img src="img/mescartes.jpg"  alt="Votre Carte bancaire">
                </div>
            </div>
        </div>


                  <%@ include file="Footer.jsp"%>

    </body>
</html>
