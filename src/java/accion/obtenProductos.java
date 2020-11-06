/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package accion;

import DAO.DAOProductos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import objetosNegocio.Producto;

/**
 *
 * @author eliu
 */
public class obtenProductos extends HttpServlet {

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
        RequestDispatcher rd;
        String siguiente = null;

        // Obten el objeto session que contiene a las variables con ámbito de sesion
        HttpSession session = request.getSession();

        String paginaSel = (String) session.getAttribute("paginaSel");

        // En este bean de tipo Lista, se almacena la lista de
        // canciones leídas de la tabla canciones de la base de datos musica
        DAOProductos p = new DAOProductos();
        List<Producto> productos = p.consultarTodos();
        // Se requiere guardar en ambito de sesión por que se va a ocupar
        // en la solicitud de correccion de falla de validacion del lado
        // del servidor
        session.setAttribute("listaProductos", productos);

        switch (paginaSel) {
            case "DespliegaProductos":
                siguiente = "DespliegaProductos.jsp";
                break;

        }

        // Establece la página JSP o servlet siguiente
        rd = request.getRequestDispatcher(siguiente);
        // Redirecciona a la página JSP o servlet siguiente
        rd.forward(request, response);

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
