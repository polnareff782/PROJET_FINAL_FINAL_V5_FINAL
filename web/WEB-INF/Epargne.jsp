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
    <br>  <br> <br>   
    <div class="row">

            <div class="col-md-5">
                <img src="img/epargne.jpg"   alt="Votre Carte bancaire">
            </div>
    <br>  <br> <br> 
            <div class="col-md-5">  <br>  <br> <br> 
                <form action="EpargneServlet" method="post">
                    <div>
                    
                        <!--     <textarea  name="epargne"rows="3" cols="80">
    Le montant choisis pour l'epargne sera viré vers le livret A et sera bloqué.
   Vous n'aurez accés a ce montant qu' aprés 6 mois.
                        </textarea> -->
                    </div>
    <br>  
    <div>
       
        <br><br>
        <input type="number" name="epargne"  placeholder="Montant à epargner ">
        <button type="submit" class="btn  btn-info">Epargnez! </button>
        
        
        <p class="text-center text-danger" id="msg"> ${msg} </p>
    </div>
                    

                </form>
            </div>
        </div>
    </body>
</html>
