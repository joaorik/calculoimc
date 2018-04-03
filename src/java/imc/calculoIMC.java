package imc;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author john
 */
public class calculoIMC extends HttpServlet {

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
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String condicao;
        String altura = request.getParameter("altura");
        String peso = request.getParameter("peso");

        float imc = Float.parseFloat(peso) / (Float.parseFloat(altura) * Float.parseFloat(altura));
        
        float im = (float) Math.round(imc);

        if (im < 18) {
            condicao = "Abaixo do peso";
        } else if (im > 18 & im < 25) {
            condicao = "Peso ideal (congrats)";
        } else if (im > 25 & im < 30) {
            condicao = "Levemente acima do peso";
        } else if (im > 30 & im < 35) {
            condicao = "Obesidade grau 1";
        } else if (im > 35 & im < 40) {
            condicao = "Obesidade grau 2";
        } else {
            condicao = "Obesidade grau 3";
        }
        
        request.setAttribute("condicao", condicao);
        request.setAttribute("imc", im);
        
        RequestDispatcher res = request.getRequestDispatcher("result.jsp");

        res.forward(request, response);
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
