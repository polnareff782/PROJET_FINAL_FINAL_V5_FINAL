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

                                    <strong class="text-danger">Nom produit acheté: ${h.nomproduit}
                                    
                                    </strong><br>
                                    <strong class="text-black">Prix : ${h.prixproduit}</strong><br>
                                </div>
                            </div>
                        </div>
                    </c:forEach>  
                    <div class="col-sm-12 px-5 mt-4">

                        <img src="img/historiqueachat.jpg" alt="Votre Carte bancaire">

                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
