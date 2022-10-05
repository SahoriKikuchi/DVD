/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package locacaodvds.controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import locacaodvds.dao.GeneroDAO;
import locacaodvds.entidade.Genero;

/**
 *
 * @author Amanda e Lucas
 */
@WebServlet(name = "GeneroServlets", urlPatterns = {"/processaGenero"})
public class GeneroServlets extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String acao = request.getParameter("acao");
        GeneroDAO dao = null;
        RequestDispatcher disp = null;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        try {

            dao = new GeneroDAO();

            if (acao.equals("inserir")) {

                String genero = request.getParameter("genero");

                Genero g = new Genero();
                g.setGenero(genero);

                dao.salvar(g);

                disp = request.getRequestDispatcher(
                        "/formularios/generos/listagem.jsp");

            } else if (acao.equals("alterar")) {
                int id = Integer.parseInt(request.getParameter("id"));
                String genero = request.getParameter("genero");
                Genero g = new Genero();
                g.setId(id);
                g.setGenero(genero);
                
                
                dao.atualizar(g);

                disp = request.getRequestDispatcher(
                        "/formularios/generos/listagem.jsp");

            } else if (acao.equals("excluir")) {

                int id = Integer.parseInt(request.getParameter("id"));

                Genero g = new Genero();
                g.setId(id);

                dao.excluir(g);

                disp = request.getRequestDispatcher(
                        "/formularios/generos/listagem.jsp");

            } else {

                int id = Integer.parseInt(request.getParameter("id"));
                Genero g = dao.obterPorId(id);
                request.setAttribute("generos", g);

                if (acao.equals("prepararAlteracao")) {
                    disp = request.getRequestDispatcher(
                            "/formularios/generos/alterar.jsp");
                } else if (acao.equals("prepararExclusao")) {
                    disp = request.getRequestDispatcher(
                            "/formularios/generos/excluir.jsp");
                }

            }

        } catch (SQLException exc) {
            exc.printStackTrace();
        } finally {
            if (dao != null) {
                try {
                    dao.fecharConexao();
                } catch (SQLException exc) {
                    exc.printStackTrace();
                }
            }
        }

        if (disp != null) {
            disp.forward(request, response);
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
