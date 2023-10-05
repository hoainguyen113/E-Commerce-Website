/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ItemInfoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author admin
 */
public class AddCart extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddCart</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddCart at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
    public List<Product> listCart = new ArrayList<>();
    public double total = 0;
    public int i = 0;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String quantity = request.getParameter("quantity");
        String productID = request.getParameter("productID");

        HttpSession session = request.getSession();
        ItemInfoDAO d = new ItemInfoDAO();
        Product p = d.getProductById(productID);

        if (listCart.isEmpty()) {
            listCart = new ArrayList<>();
            listCart.add(p);
        } else {
            if (p != null) {
                listCart.add(p);
            }
        }

        Cookie[] arr = request.getCookies();
        String txt = "";
        if (arr != null) {
            for (Cookie o : arr) {
                if (o.getName().equals("cart")) {
                    txt += o.getValue();
                    o.setMaxAge(0);
                    response.addCookie(o);
                }
            }
        }
        if (productID != null && quantity != null) {
            if (txt.isEmpty()) {
                txt = productID + ":" + quantity;
                total = 0;
                i = 0;
                total += listCart.get(i).getNewPrice() * Double.parseDouble(quantity);
                i++;
            } else {
                txt = txt + "/" + productID + ":" + quantity;
                total += listCart.get(i).getNewPrice() * Double.parseDouble(quantity);
                i++;
            }
        }

        Cookie c = new Cookie("cart", txt);
        c.setMaxAge(60 * 60 * 24 * 3);
        response.addCookie(c);
        session.setAttribute("total", total);
        session.setAttribute("listCart", listCart);
        response.sendRedirect("cart.jsp");

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
        String id_raw = request.getParameter("id");
        HttpSession session = request.getSession();
        for (int i = 0; i < listCart.size(); i++) {
            if (listCart.get(i).getProductID().equals(id_raw)) {
                listCart.remove(listCart.get(i));
            }
        }
        session.setAttribute("listCart", listCart);
        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
