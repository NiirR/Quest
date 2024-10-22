package servlet;

import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "InitServlet" , value = "/init")
public class InitServlet extends HttpServlet {
User user = new User("test" , "1");

    @Override
    protected void doGet(HttpServletRequest reg , HttpServletResponse resp) throws ServletException, IOException {

        reg.setAttribute("login", null);
        String username = reg.getParameter("username");
        String password = reg.getParameter("password");
        String login = reg.getParameter("login");

        if (username != null && password != null) {
            if (!user.getUserName().equals(username) || !user.getPassword().equals(password)) {
                reg.setAttribute("login", false);
            }
            if (username.equals(user.getUserName()) && password.equals(user.getPassword())) {
                reg.setAttribute("login", true);
            }
        }
        if(login != null){
            reg.setAttribute("login", true);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest reg , HttpServletResponse resp) throws IOException, ServletException {


        resp.sendRedirect("/init");
    }
}
