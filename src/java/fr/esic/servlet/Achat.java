/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.servlet;

import fr.esic.dao.CompteDao;
import fr.esic.dao.HistoriqueDao;
import fr.esic.dao.MessageDao;
import fr.esic.dao.ProduitDao;
import fr.esic.model.Compte;
import fr.esic.model.Message;
import fr.esic.model.Person;
import fr.esic.model.Produit;
import fr.esic.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author marye
 */
@WebServlet(name = "Achat", urlPatterns = {"/Achat"})
public class Achat extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Achat</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Achat at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
        Person person = user.getPerson();

        
        if (user != null) {
            try {
                Compte comptes = CompteDao.getAllCompte(person);
                 int idperson = person.getId();
                request.setAttribute("comptes", comptes);
                
                List<Produit> produitachete = ProduitDao.AffichelisteProduit(idperson);
                request.setAttribute("produitachete", produitachete);

        request.getRequestDispatcher("WEB-INF/Achat.jsp").forward(request, response);
            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println("expt :" + e.getMessage());
            }

        } else {
            request.setAttribute("msg", "Connectez-vous");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
        
        
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    HttpSession session = request.getSession(true);
        User user = (User) session.getAttribute("user");
                Person person = user.getPerson();
                

        if (user != null) {
            try {
                Compte comptes = CompteDao.getAllCompte(person);
                int idperson=person.getId();
                int numcarte=Integer.parseInt(comptes.getNumcarte());
                String nomproduit=request.getParameter("nomproduit");
                int solde = Integer.parseInt(comptes.getSolde());
               String operation=request.getParameter("Achat");

                int prixproduit=Integer.parseInt(request.getParameter("prixproduit"));
                
                 
                 if(solde> prixproduit){
                     solde =solde- prixproduit;
          
                     CompteDao.paiement(solde);   
                              ProduitDao.InsertProduit(nomproduit, prixproduit, idperson);       }            

                  else {
                request.setAttribute("msg", "Veuillez verifiez votre solde!!");
             request.getRequestDispatcher("WEB-INF/Achat.jsp").forward(request, response); }
                 
//            HistoriqueDao.AjouterAchat(operation, prixproduit, idperson);
             
      
   
            } catch (Exception e) {
                PrintWriter out = response.getWriter();
                out.println("expt :" + e.getMessage());
            }

        } else {
            request.setAttribute("msg", "Connectez-vous");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
        
                  request.getRequestDispatcher("WEB-INF/Achat.jsp").forward(request, response); 

        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
