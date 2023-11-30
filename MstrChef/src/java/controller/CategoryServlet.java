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

public class CategoryServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String categoryId = request.getParameter("cid");
        
        FastFoodProductDao dao = new FastFoodProductDao();
        List<FastFood> listFastFoodByCategory = dao.getFastFoodByCategoryId(categoryId);
        List<Category> category = dao.getCategories();
        FastFood fastfood = dao.getLatestFastFood();
        
        request.setAttribute("listPaging", listFastFoodByCategory);
        request.setAttribute("listC", category);
        request.setAttribute("l", fastfood);
        request.getRequestDispatcher("Home.jsp").forward(request, response);
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
