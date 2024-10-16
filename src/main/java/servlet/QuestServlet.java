package servlet;

import entity.Area;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;




@WebServlet(name = "QuestServlet" , value = "/start")
public class QuestServlet extends HttpServlet {
    public  String username;


    @Override
    protected void doGet(HttpServletRequest reg , HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = reg.getSession();

        if(session.getAttribute("start") == null){
            session.setAttribute("start", true);
            session.setAttribute("username", null);
            session.setAttribute("area", Area.MINE_MENU);
        }



        getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        String zone = req.getParameter("action");
        username = req.getParameter("name");
        if(username != null) {
            session.setAttribute("username", username);
        }

        if (username != null && zone == null) {
            session.setAttribute("area", Area.ZONE2);
        }
        else  {
            switch (zone) {
                case "zone1" -> session.setAttribute("area", Area.ZONE1);
                case "zone2" -> session.setAttribute("area", Area.ZONE2);
                case "zone3" -> session.setAttribute("area", Area.ZONE3);
                case "zone3_1" -> session.setAttribute("area", Area.ZONE3_1);
                case "zone4" -> session.setAttribute("area", Area.ZONE4);
                case "zone4_1" -> session.setAttribute("area", Area.ZONE4_1);
                case "zone5" -> session.setAttribute("area", Area.ZONE5);
                case "zone5_1" -> session.setAttribute("area", Area.ZONE5_1);
            }
            resp.sendRedirect("/start");
        }
    }
}
