package servlet;

import entity.Questions;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MillionaireServlet" , value = "/mill")
public class MillionaireServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest reg , HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = reg.getSession();

        if(session.getAttribute("start") == null){
            session.setAttribute("start", true);
            session.setAttribute("quest", Questions.VOPROS1);
        }
        getServletContext().getRequestDispatcher("/WEB-INF/secondGame.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest reg , HttpServletResponse resp) throws IOException {
        HttpSession session = reg.getSession();
        String answer = reg.getParameter("answer");


        switch (answer) {
            case "t1" -> session.setAttribute("quest", Questions.VOPROS2);
            case "t2" -> session.setAttribute("quest", Questions.VOPROS3);
            case "t3" -> session.setAttribute("quest", Questions.VOPROS4);
            case "t4" -> session.setAttribute("quest", Questions.VOPROS5);
            case "t5" -> session.setAttribute("quest", Questions.VOPROS6);
            case "t6" -> session.setAttribute("quest", Questions.VOPROS7);
            case "t7" -> session.setAttribute("quest", Questions.VOPROS8);
            case "t8" -> session.setAttribute("quest", Questions.VOPROS9);
            case "t9" -> session.setAttribute("quest", Questions.VOPROS10);
            case "t10" -> session.setAttribute("quest", Questions.VOPROS11);
            case "t11" -> session.setAttribute("quest", Questions.VOPROS12);
            case "t12" -> session.setAttribute("quest", Questions.VOPROS13);
            case "t13" -> session.setAttribute("quest", Questions.VOPROS14);
            case "t14" -> session.setAttribute("quest", Questions.VOPROS15);
            case "t15" -> session.setAttribute("quest", Questions.VOPROS15);
        }

            resp.sendRedirect("/mill");
        }

}
