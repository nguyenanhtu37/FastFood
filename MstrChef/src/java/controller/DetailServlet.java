package controller;

import dao.FastFoodProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.FastFood;

public class DetailServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String fastfoodDetail = request.getParameter("jid");
        
        FastFoodProductDao dao = new FastFoodProductDao();
        FastFood fastfood = dao.getFastFoodByItsId(fastfoodDetail);
        List<Category> category = dao.getCategories();
        FastFood fastfood1 = dao.getLatestFastFood();
        
        request.setAttribute("productId", fastfood);
        request.setAttribute("listC", category);
        request.setAttribute("l", fastfood1);
        request.getRequestDispatcher("Detail.jsp").forward(request, response);
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
