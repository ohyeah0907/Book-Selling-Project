package backend.JavaServlet;

import java.io.*;
import java.util.List;

import javax.servlet.http.*;

import backend.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

@WebServlet("/category")
public class Category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) 
            throws ServletException, IOException {
        String url = "/asset/jsp/category.jsp";
        String viewCategory = request.getParameter("view-category");
        String userName = request.getParameter("username");
        
        if(viewCategory.equals("default")) {
            List<Book> allBook = DbBook.allBook();
            request.setAttribute("allBook", allBook);
            url = "/asset/jsp/category.jsp";
        }

        if(viewCategory.equals("view-category")) {
            String category = request.getParameter("category");
            List<Book> allBook = DbBook.allCategoryBook(category);
            request.setAttribute("allBook", allBook);
            url = "/asset/jsp/category.jsp";
        }

        request.setAttribute("userName", userName);

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

