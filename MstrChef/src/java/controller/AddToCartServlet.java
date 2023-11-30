package controller;

import dao.FastFoodProductDao;
import java.awt.event.ItemListener;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;
import model.FastFood;
import model.Order;
import org.apache.jasper.tagplugins.jstl.core.ForEach;

public class AddToCartServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        FastFoodProductDao dao = new FastFoodProductDao();
        String fid = request.getParameter("fastfoodid");
        HttpSession session = request.getSession();
        FastFood item = dao.getFastFoodByItsId(fid);
        List<Item> cart = new ArrayList<>();
        boolean check = false;
        
        if(session.getAttribute("cart")==null){
            cart.add(new Item(item, 1));
            session.setAttribute("cart", cart);
        }
        else{
            List<Item> list= (List<Item>) session.getAttribute("cart");
            for(Item i: list){
                if(i.getFastfood().getId()==item.getId()){
                   i.setQuantity(i.getQuantity()+1);
                   check = true;
                   break;
                }
            }
            if(check){
                session.setAttribute("cart", list);
                
            }
            else{
                 list.add(new Item(item, 1));
                 session.setAttribute("cart", list);
            }
            

            
        }
        
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
             
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
