<%-- 
    Document   : HistoriqueAchat
    Created on : Mar 12, 2021, 1:45:46 AM
    Author     : marye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>             
        <%@ include file="EnteteClient.jsp"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Historique</title>
    </head>
    <body>
        <div class="container mt-2">
            <div>
                <div class="row">
                    <c:forEach items="${historiques}" var="h">
                        <div class="col-sm-3 mt-4">
                            <div class="card card-perso">
                                <div class="card-body">
                                    <strong class="text-danger">Faite le  : </strong>
                                    
                                    <p class="card-text" style="color:black"> <b>${h.dateachat}</b><br></p>

                                    <strong class="text-warning">Produit :    </strong>
                                    <p class="card-text" style="color:darkslateblue"> <b>${h.nomproduit}</b><br></p>

                                    <strong class="text-success">Prix : </strong><br>
                                      <p class="card-text" style="color:darkslategray"> <b>${h.prixproduit}.00€</b><br></p>


                                </div>
                            </div>
                        </div>
                    </c:forEach>    
                    <div class="col-sm-4  mt-4">


                    </div>
                    <div class="col-sm-5  mt-4">

                        <img src="img/historiqueachat1.jpg" alt="Votre Carte bancaire">

                    </div>

                </div>
            </div>
        </div>
                  <%@ include file="Footer.jsp"%>

    </body>
</html>
