<%-- 
    Document   : Message
    Created on : Mar 8, 2021, 8:51:34 PM
    Author     : marye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="menuConseiller.jsp"%>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet"type="text/css" href="style_1.css" >


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>


    <body>
        
        <br><br><br>
        <div class="container ">
            <div class="row"> 
                <div class="col-md-4 mb-2">
                          <!--  <p class="text-danger text-center"> ${msg} </p> -->

                    <form action="contactConseiller?id=${user.person.id}" method="post">

                        <div id="accordion" >
                            <div class="card">
                                <div class="card-header  bg-white lg-white">
                                    <a class="card-link text-danger" data-toggle="collapse" href="#collapseOne" >
                                        <b>  Nouveau message </b>
                                    </a>
                                </div>
                                <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                    <div class="card-body">


                                        <div class="mb-3">
                                            <textarea class="form-control" name="contenu" id="exampleFormControlTextarea1" rows="3" placeholder="Rédiger votre message"></textarea>
                                        </div>

                                        <button type="submit" class="btn btn-success ">Envoyer</button>

                                    </div>
                                </div>
                            </div>  
                        </div>
                    </form>
                </div>  

                <div class="col-md-4">


                </div>
                <div class="col-md-4">

                    <form action="mailto:Conseiller@conseiller.fr" method="post" enctype="text/plain">

                        <div class="card-body">

                            <button type="submit" class="btn btn-info "> <b>Envoyer un Mail </b></button>
                        </div>
                    </form>
                </div>
            </div>




            <div class="card mb-2" style="width: 22rem;">
                <div class="card-header  bg-white lg-white text-success">
                    <b>Messages envoyés</b> 
                </div>
                <ul class="list-group list-group-flush">
                    <input  hidden type="test" name="idperson" value="${comptes.person.id}">

                    <li class="list-group-item">  
                        <c:forEach items="${messages}" var="m">


                            <h6>${m.dateMessage} :</h6> 
                            ${m.contenuMessage} 

                        </c:forEach></li>

                </ul>
            </div>


            <div class="card" style="width: 22rem;">
                <div class="card-header  bg-white lg-white text-warning mt-2">
                    <b>Messages reçus</b> 
                </div>
                <ul class="list-group list-group-flush">
                    <input  hidden type="test" name="idperson" value="${comptes.person.id}">

                    <li class="list-group-item">  
                        <c:forEach items="${message}" var="m">

                            <div class="card-body">

                                <h6>${m.dateMessage} :</h6> 
                                ${m.contenuMessage}  
                                 
                            </div>
                        </c:forEach></li>

                </ul>
            </div>



            <div class="row">
                <div  class="col-md-4 mb-2">

                </div>
                <div  class="col-md-5 mb-2">
                    <img src="img/message.jpg" width ="190px" height="200px" class="card-img-top" alt="Votre Carte bancaire">
                </div>
            </div>

        </div>
