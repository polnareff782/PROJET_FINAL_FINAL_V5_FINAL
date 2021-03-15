<%-- 
    Document   : Achat.jsp
    Created on : Mar 12, 2021, 12:46:20 AM
    Author     : marye
--%>

<%@page import="fr.esic.dao.HistoriqueDao"%>
<%@page import="fr.esic.dao.ProduitDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Achat</title>

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.13.0/css/all.css" />
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
            body{
                margin:0px;
                padding: 0px;
                font-family: 'Open Sans', sans-serif;
            }
            /* Barre de navigation */
            nav{
                display:flex;
                flex-wrap:wrap;
                justify-content: space-between;
                padding: 20px;
                background-color: #fff;
                position: sticky;
                top: 0;
            }
            nav h1{
                font-size: 20px;
            }
            nav .onglets{
                display: flex;
                flex-wrap:wrap;
            }
            nav .onglets p{
                font-size: 17px;
                margin-right: 10px;
                cursor:pointer;
            }
            nav .onglets input{
                margin: 8px 20px;
                padding: 15px;
                border-radius: 30px;
                border:none;
                background-color: #f2f2f2;
                outline:none;
            }
            /* Fin de la barre de navigation */

            /* Header */
            header{
                display: flex;
                flex-direction: column;
                justify-content:center;
                align-items:center;
            }
            header h1{
                font-size: 50px;
                max-width: 500px;
                text-align:center;
            }
            header button{
                padding: 15px 20px;
                font-size: 20px;
                border:none;
                border-radius: 5px;
                outline:none;
                cursor:pointer;
            }
            /* Fin du header */

            /* Section principale */

            .main{
                margin: 20px;
                margin-top: 80px;
                display:flex;
                flex-direction:column;
                justify-content:center;
                align-items:center;
            }
            /* Toutes les cartes */
            .cards{
                display:flex;
                flex-wrap:wrap;
            }
            .cards .card{
                margin-right: 20px;
                cursor:pointer;
            }
            .cards .card img{
                width: 350px;
            }
            .cards .card .card-header{
                display: flex;
                flex-wrap:wrap;
                justify-content: space-between;
            }
            .cards .card .card-body p{
                margin-top: -10px;
            }
            /* Fin de toutes les cartes */

            /* Video de présentation */
            .main .video{
                margin-top: 80px;
                width: 90%;
            }
            .main .video iframe{
                border:none;
                border-radius: 10px;
                width: 100%;
                height: 400px;
            }
            /* Fin de la vidéo de présentation */
            /* Fin de la section principale */

            /* Pied de page */
            footer {
                margin-top: 100px;
                background-color: #000;
                padding: 30px;
                color: #fff;
                display: flex;
                flex-wrap:wrap;
                justify-content: space-between;
            }
            footer .social-media{
                display: flex;
            }
            footer .social-media p{
                margin-right: 15px;
                border: 1px solid #fff;
                border-radius: 100%;
                padding: 5px;
                text-align:center;
                width: 20px;
                cursor:pointer;
            }
            /* Fin du pied de page */

            @media screen and (max-width: 640px){
                nav .onglets .link, nav h1{
                    display:none;
                }
                .cards .card img{
                    width: 300px;
                }
            }
        </style>
    </head>
    <body>
        <!-- Barre de navigation -->
        <nav>

            <a class="nav-link active font-weight-bold px-3 fas fa-home fa-2x material-icons "style ="color:darkred; "href="MesCartes" ></a>

            <div class="onglets">
                <p class="link" >Nouveautés</p>
                <p class="link">Homme</p>
                <p class="link">Femme</p>
                <p class="link">Enfant</p>
                <p class="link">Cadeaux</p>
                <form>
                    <input type="search" placeholder="Rechercher">
                </form>

                <p><a class="nav-link active font-weight-bold px-3 fas fa-heart fa-2x material-icons "style ="color:red; ""></a></p>
                <p><a class="nav-link active font-weight-bold px-3 fas fa-shopping-cart fa-2x material-icons "style ="color:purple; "href="HistoriqueAchatServlet" ></a> </p>

            </div>
        </nav>
        <!-- Fin de la barre de navigation -->

        <!-- Header -->
        <header>
            <h1>C'est votre boutique, votre chez-vous.</h1>
            <!-- Fin du header<button>Naviguer <i class="fas fa-paper-plane"></i></button>
            -->
        </header>
        <!-- Fin du header -->

        <!-- Section principale -->
        <section class="main">

            <!-- Toutes les cartes -->

            <div class="cards">

                <form acion="Achat"method="post"> 
                    <div class="card">

                        <img src="https://static.nike.com/a/images/f_auto/q_auto:eco/t_PDP_864_v1/0697fd03-09fd-4b3b-be0b-11b009c671d9/short-en-molleton-sportswear-pour-z5Kgjx.jpg">

                        <div class="card-header">
                            <input type="text" name="nomproduit" value="Short Nike" hidden>
                            <h4 class="title" >Short Nike</h4>
                            <input type="number" name="prixproduit" value="199" hidden>

                            <h4 class="price">199€</h4>
                        </div>
                        <div class="card-body">
                            <p>Short moulant pour homme</p>
                            <button type="submit">Acheter <i class="fas fa-paper-plane"></i></button>

                        </div>
                    </div>
                </form>

                <form acion="Achat"method="post">
                    <div class="card">
                        <img src="https://www.snipes.fr/dw/image/v2/BDCB_PRD/on/demandware.static/-/Sites-snse-master-eu/default/dw282d0e34/1899854_P.jpg?sw=1560&sh=1560&sm=fit&sfrm=png">
                        <div class="card-header">
                            
                          <input type="text" name="nomproduit" value="Paire de chaussures stylées" hidden>
                            <h4 class="title">Paire de chaussures stylées</h4>
                            
                             <input type="number" name="prixproduit" value="69" hidden>
                            <h4 class="price">69€</h4>
                        </div>
                        <div class="card-body">

                            <p>Des paires de chaussures stylées pour femme</p>

                            <button type="submit" value="achat">Acheter <i class="fas fa-paper-plane"></i></button>

                        </div>
                    </div>
                </form>

                <form acion="Achat"method="post">
                    <div class="card">
                        <img src="https://static.nike.com/a/images/f_auto/q_auto:eco/t_PDP_864_v1/abb537eb-0e70-4e1f-903e-ec46b8657c0d/short-de-training-en-tissu-fleece-dri-fit-pour-n97b2F.jpg">
                        <div class="card-header">
                         <input type="text" name="nomproduit" value="Short pour courir" hidden>

                            <h4 class="title" >Short pour courir</h4>
                              <input type="number" name="prixproduit" value="39" hidden>

                            <h4 class="price" >39€</h4>
                        </div>
                        <div class="card-body">
                            <p>Sport pour courir en plain air pour homme</p>

                            <button type="submit">Acheter <i class="fas fa-paper-plane"></i></button>

                        </div>
                    </div>

                </form>
            </div>
            <!-- Fin de toutes les cartes -->

            <!-- Video de presentation -->
            <div class="video">
                <iframe src="https://www.youtube.com/embed/2COSkxxOtXY" allowfullscreen></iframe>
            </div>
            <!-- Fin de la video de presentation -->
        </section>
        <!-- Fin de la section principale -->

        <!-- Pied de page -->
        <footer>
            <p>&copy; Contactez-nous au 06 98 87 82 00</p>
            <div class="social-media">
                <p><i class="fab fa-facebook-f"></i></p>
                <p><i class="fab fa-twitter"></i></p>
                <p><i class="fab fa-instagram"></i></p>
                <p><i class="fab fa-linkedin-in"></i></p>
            </div>
        </footer>
        <!-- Fin du pied de page -->
    </body>
</html>
