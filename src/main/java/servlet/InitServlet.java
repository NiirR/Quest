package servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "InitServlet" , value = "/init")
public class InitServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest reg , HttpServletResponse resp) throws ServletException, IOException {
        reg.setAttribute("login", false);
        String username = reg.getParameter("username");
        String password = reg.getParameter("password");
        boolean login = Boolean.parseBoolean(reg.getParameter("login"));


        if(username != null && password != null || login) {
            reg.setAttribute("login", true);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest reg , HttpServletResponse resp) throws IOException, ServletException {


        resp.sendRedirect("/init");
    }
}
