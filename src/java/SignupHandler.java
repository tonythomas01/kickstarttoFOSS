/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author tony
 */
@WebServlet(urlPatterns = {"/SignupHandler"})
public class SignupHandler extends HttpServlet {

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
            out.println("<title>Kickstart to FOSS </title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Sign Up failed :( </h1>");
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/login", "root", "toor");
                Statement stmt = conn.createStatement();       
                String fullname = request.getParameter("fullname");
                String email = request.getParameter("email");
                String pass1 = request.getParameter("pass1");
                String pass2 = request.getParameter("pass2");
                if( pass1 == null ? pass2 == null : pass1.equals(pass2) ) {                    
                    String insertUser = "INSERT INTO `user`( `name`, `email`, `password`, `is_mentor`) "
                            + "VALUES (?,?,?,?)";
                    String user_mode = request.getParameter("usertype");
                    PreparedStatement ps = conn.prepareStatement(insertUser);
                    ps.setString(1,fullname);
                    ps.setString(2, email);
                    ps.setString(3, pass1);
                    ps.setBoolean(4, false);
                    if ( "mentor".equals(user_mode)) {
                        ps.setBoolean(4, true);
                    }
                    int rows = ps.executeUpdate();
                    if ( rows == 0 ) {
                        out.println("<p> couldnt insert </p>" + ps );
                    } else {
                        response.sendRedirect("http://localhost:8080/kickstartToOS/");
                    }
                } else {
                    out.println("<p>Please enter same password twice</p>");
                    response.sendRedirect("http://localhost:8080/kickstartToOS/signup.jsp");
                }           
            } catch ( Exception e ) {
                
                e.printStackTrace();
            }
                    
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
        processRequest(request, response);
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
        processRequest(request, response);
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
