package controller;

import dao.FastFoodProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

public class LoginServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        FastFoodProductDao dao = new FastFoodProductDao();
        Account account = dao.loginByUserPass(username, password);
        if(account == null){
            request.setAttribute("mess", "Wrong user or password");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        }
        else{
            HttpSession session = request.getSession();
            session.setAttribute("acc", account);
            response.sendRedirect("home");
            session.setMaxInactiveInterval(1000);
        }
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
