package backend.JavaServlet;

import java.io.*;
import java.util.List;

import javax.servlet.http.*;

import backend.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/cart")
public class ViewCart extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) 
            throws ServletException, IOException {
        String url = "/asset/jsp/cart.jsp";
        
        String add = request.getParameter("add-to-card");
        String remove = request.getParameter("remove-book");
        String delete = request.getParameter("delete");

        if(delete == null) {
            delete = "nothing";
        }

        if(add == null) {
            add = "view-cart";
        }
        if(remove == null) {
            remove = "nothing";
        }

        if(add.equals("add")) {
            String username = request.getParameter("username");
            String bookId = request.getParameter("book-id");

            if(DbCart.inCart(username, bookId)) {
                DbCart.increaseAmount(username, bookId);

            } else {
                Cart cart = new Cart(username, bookId);
                DbCart.insertCart(cart);
            }
        }

        if(remove.equals("remove")) {
            String bookId = request.getParameter("book-id");
            String username = request.getParameter("username");
            DbCart.deleteOneProduct(bookId, username);
            url = "/asset/jsp/cart.jsp";
        }

        if(delete.equals("delete")) {
            String username = request.getParameter("username");
            DbCart.deleteCart(username);
            url = "/asset/jsp/cart.jsp";
        }

        List<Object[]>allProduct = DbCart.allProduct(request.getParameter("username"));

        request.setAttribute("allProduct", allProduct);
        request.setAttribute("userName", request.getParameter("username"));

        Integer totalBill = 0;
        Integer totalProduct = 0;
        if(allProduct.size() > 0) {
            for (Object[] objects : allProduct) {
                totalBill += (Integer.parseInt(objects[2].toString())*Integer.parseInt(objects[4].toString()));
                totalProduct += Integer.parseInt(objects[4].toString());
            }
        }


        request.setAttribute("totalBill", totalBill);
        request.setAttribute("totalProduct", totalProduct);
        
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
        
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }    
    
}
