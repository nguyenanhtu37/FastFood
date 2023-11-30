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

public class AddServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String newName = request.getParameter("productName");
        String newImage = request.getParameter("productImage");
        String newPrice = request.getParameter("productPrice");
        String newTitle = request.getParameter("title");
        String newDescription = request.getParameter("productDescription");
        String newCategory = request.getParameter("category");
        HttpSession session = request.getSession();
        Account a = (Account)session.getAttribute("acc");
        int newSellId = a.getId();
        
        FastFoodProductDao dao = new FastFoodProductDao();
        dao.addProduct(newName, newImage, newPrice, newTitle, newDescription, newCategory, newSellId);
        response.sendRedirect("manager");
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
