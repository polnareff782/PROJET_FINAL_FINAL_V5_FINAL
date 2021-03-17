/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.esic.servlet;

import fr.esic.dao.HistoriqueDao;
import fr.esic.dao.UserDao;
import fr.esic.model.User;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "modifProfilClient", urlPatterns = {"/modifProfilClient"})
public class UpdateUser extends HttpServlet {

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
            out.println("<title>Servlet modifProfilClient</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet modifProfilClient at " + request.getContextPath() + "</h1>");
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
        User user =(User) session.getAttribute("user");
        int id = Integer.parseInt(request.getParameter("id"));
       
        
        
                if (user != null) {
                    try {
                        if (id==3) {
        String nom    = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mdp    = request.getParameter("mdp");
        String log    = request.getParameter("login");
            UserDao.UpdateUser(nom, prenom, mdp, log);
             HistoriqueDao.UpdateUser(id);
              User u = UserDao.AfficheUser(id);
              request.setAttribute("u", u);
           request.getRequestDispatcher("WEB-INF/update.jsp").forward(request, response);
                            
                        }
              if (id==2) {
        String nom    = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mdp    = request.getParameter("mdp");
        String log    = request.getParameter("login");
            UserDao.UpdateUser(nom, prenom, mdp, log);
             HistoriqueDao.UpdateUser(id);
              User u = UserDao.AfficheUser(id);
              request.setAttribute("u", u);
           request.getRequestDispatcher("WEB-INF/updateconseiller.jsp").forward(request, response);
                            
                        }
                 if (id==1) {
        String nom    = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String mdp    = request.getParameter("mdp");
        String log    = request.getParameter("login");
            UserDao.UpdateUser(nom, prenom, mdp, log);
             HistoriqueDao.UpdateUser(id);
              User u = UserDao.AfficheUser(id);
              request.setAttribute("u", u);
           request.getRequestDispatcher("WEB-INF/updateclient.jsp").forward(request, response);
                            
                        }

               } catch (Exception e) {
             PrintWriter out = response.getWriter();
             out.println("expt :"+e.getMessage());
        }
            
        } else {
            request.setAttribute("msg", "Connectez vous");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
       request.getRequestDispatcher("WEB-INF/modifProfilClient.jsp").forward(request, response);

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
    request.getRequestDispatcher("WEB-INF/ProfilClient.jsp").forward(request, response);

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
