package controller;

import dao.FastFoodProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Category;
import model.FastFood;

@WebServlet(name = "ManagerServlet", urlPatterns = {"/manager"})
public class ManagerServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession();
        Account a = (Account)session.getAttribute("acc");
        int sellerId = a.getId(); // Thay đổi tên biến để tránh nhầm lẫn với sell_ID
        FastFoodProductDao dao = new FastFoodProductDao();
        List<FastFood> list = dao.getFastFoodBySellId(sellerId); // Sử dụng sellerId thay cho sell_ID
        List<Category> category = dao.getCategories();

        request.setAttribute("listP", list);
        request.setAttribute("listC", category);
        request.getRequestDispatcher("ManagerProduct.jsp").forward(request, response);
    }

    // Các phương thức doGet, doPost và getServletInfo không có sự thay đổi, bạn có thể giữ nguyên như cũ.

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
