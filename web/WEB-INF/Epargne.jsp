<%-- 
    Document   : Epargne.jsp
    Created on : Mar 12, 2021, 4:42:13 AM
    Author     : marye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <%@ include file="EnteteClient.jsp"%>

    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npmbootstrap.bundle.min.js/ bootstrap.bundle.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Epargne</title>
    </head>
    <body>
        <br>    <br>
        <div class="container">
        <div class="row ">
            <div class="col-md-4">
               <br> 
                
                <div  class="text-center"> 
                       <label>Montant actuel d'epargne :
                    </label>
                    <p class="card-text"style="color:purple"> <b>${comptes.montantEpargne}.00€</b></p>
                </div>
                     <br>    <br><br>  <br><br>    
                <c:if test="${comptes.montantEpargne ==10 }">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 10%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">10%</div>
                    </div>                          
                </c:if>
                     <c:if test="${comptes.montantEpargne ==20 }">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100">15%</div>
                    </div>                          
                </c:if>


                <c:if test="${comptes.montantEpargne ==30}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-primary" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
                    </div>       
                </c:if>
                      <c:if test="${comptes.montantEpargne ==40}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-primary" role="progressbar" style="width: 35%" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100">35%</div>
                    </div>       
                </c:if>
                
                <c:if test="${comptes.montantEpargne ==50}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
                    </div>
                </c:if>

                <c:if test="${comptes.montantEpargne ==60}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">60%</div>
                    </div>
                </c:if>
                <c:if test="${comptes.montantEpargne ==70}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
                    </div>                                      
                </c:if>
                <c:if test="${comptes.montantEpargne ==80}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">80%</div>
                    </div>                                      
                </c:if>
                <c:if test="${comptes.montantEpargne ==90}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">90%</div>
                    </div>                                      
                </c:if>
                <c:if test="${comptes.montantEpargne ==100}">
                    <div class="progress">
                        <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
                    </div>             
                </div>                                      
                </c:if>

        </div>

        <div class="col-md-2"> <br>

        </div>
        <div class="col-md-4">
            <img src="img/epargne.jpg"   alt="Votre Carte bancaire">
        </div>
</div>
</div>
                  <%@ include file="Footer.jsp"%>

</body>
</html>
