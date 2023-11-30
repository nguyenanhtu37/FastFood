package controller;

import dao.FastFoodProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.FastFood;

public class SearchServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String searchName = request.getParameter("txt");
        
        FastFoodProductDao dao = new FastFoodProductDao();
        ArrayList<FastFood> list = dao.getFastFoodBySearchName(searchName);
        List<Category> category = dao.getCategories();
        FastFood fastfood = dao.getLatestFastFood();
        
        request.setAttribute("listPaging", list);
        request.setAttribute("listC", category);
        request.setAttribute("l", fastfood);
         request.setAttribute("txtS", searchName);
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
