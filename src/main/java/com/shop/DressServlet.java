package com.shop;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/buy")
public class DressServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String dress = request.getParameter("dress");
        String price = request.getParameter("price");

        request.setAttribute("dress", dress);
        request.setAttribute("price", price);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
