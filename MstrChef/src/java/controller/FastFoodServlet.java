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

public class FastFoodServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String index1 = request.getParameter("index");
        if(index1 == null){
            index1 = "1";
        }
        int index = Integer.parseInt(index1);
        
        FastFoodProductDao dao = new FastFoodProductDao();
        int allProduct = dao.countAllProduct();
        int endPage = allProduct/9;
        if(allProduct % 9 != 0){
            endPage++;
        }
        
        List<FastFood> fastfoodList = dao.pagingFastFood(index);
        List<Category> category = dao.getCategories();
        FastFood fastfood = dao.getLatestFastFood();
        
        request.setAttribute("endP", endPage);
        request.setAttribute("listPaging", fastfoodList);
        request.setAttribute("listC", category);
        request.setAttribute("l", fastfood);
        request.setAttribute("index", index);
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
