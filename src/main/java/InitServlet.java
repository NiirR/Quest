
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;




@WebServlet(name = "InitServlet" , value = "/start")
public class InitServlet extends HttpServlet {
    public  String username;
    Area area;

    @Override
    protected void doGet(HttpServletRequest reg , HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = reg.getSession();

        if(session.getAttribute("start") == null){
            session.setAttribute("start", true);
            session.setAttribute("username", null);
            session.setAttribute("area",Area.ZONE1);
        }



getServletContext().getRequestDispatcher("/index.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        username = req.getParameter("name");
        area = (Area)session.getAttribute("area");
        session.setAttribute("username",username);
        session.setAttribute("area",Area.ZONE1);
        resp.sendRedirect("/start");


        if (username != null){
            session.setAttribute("area",Area.ZONE2);
        }

    }
}
