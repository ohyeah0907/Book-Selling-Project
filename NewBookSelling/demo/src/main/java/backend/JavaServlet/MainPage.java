package backend.JavaServlet;

import java.io.*;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import backend.*;


@WebServlet("/main-page")
public class MainPage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) 
            throws ServletException, IOException {
        String url = "/index.jsp";
        String login = request.getParameter("login-register");
        
        List<Book> allBook = DbBook.allBook();
        request.setAttribute("allBook", allBook);

        if(login == null) {
            login = "main-page";
            url = "/index.jsp";
        }
        if(login.equals("login")) {

            String userName = request.getParameter("username");
            String passWord = request.getParameter("password");
            if(DbUser.verifyUser(userName, passWord)){
                User user = new User(userName, passWord);

                request.setAttribute("user", user);
                url = "/asset/jsp/logedIn.jsp";
            }

        } else if(login.equals("signup")) {
            String userName = request.getParameter("username");
            String passWord = request.getParameter("password");
            String rePassWord = request.getParameter("confirm-password");

            if(DbUser.verifyUser(userName) && passWord.equals(rePassWord)) {
                User user = new User(userName, passWord);
                if(DbUser.insertUser(user)) {
                    
                }
            }
        }

        if(login.equals("back-to-main-page")) {
            String userName = request.getParameter("username");
            User user = new User(userName, "passWord");

                request.setAttribute("user", user);
                url = "/asset/jsp/logedIn.jsp";
        }

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
