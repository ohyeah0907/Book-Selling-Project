package backend.JavaServlet;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import backend.*;
@WebServlet("/book-review")
public class BookReview extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) 
            throws ServletException, IOException {

        String url = "/asset/jsp/detail-product.jsp";

        String bookId = request.getParameter("bookId");
        String userName = request.getParameter("userName");

        Book book = DbBook.bookInfoById(bookId);

        request.setAttribute("userName", userName);
        request.setAttribute("book", book);

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
