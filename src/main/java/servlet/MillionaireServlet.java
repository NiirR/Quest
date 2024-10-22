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
            session.setAttribute("ru", 0);
            session.setAttribute("quest", Questions.VOPROS1);
        }

        getServletContext().getRequestDispatcher("/WEB-INF/secondGame.jsp").forward(reg,resp);
    }

    protected void doPost(HttpServletRequest reg , HttpServletResponse resp) throws IOException {
        HttpSession session = reg.getSession();
        String answer = reg.getParameter("answer");



        switch (answer) {
            case "false" -> session.setAttribute("quest", Questions.FAIL);
            case "t1" -> {session.setAttribute("quest", Questions.VOPROS2); session.setAttribute("ru", 100);}
            case "t2" -> {session.setAttribute("quest", Questions.VOPROS3); session.setAttribute("ru", 200);}
            case "t3" -> {session.setAttribute("quest", Questions.VOPROS4); session.setAttribute("ru", 300);}
            case "t4" -> {session.setAttribute("quest", Questions.VOPROS5); session.setAttribute("ru", 500);}
            case "t5" -> {session.setAttribute("quest", Questions.VOPROS6); session.setAttribute("ru", 1000);}
            case "t6" -> {session.setAttribute("quest", Questions.VOPROS7); session.setAttribute("ru", 2000);}
            case "t7" -> {session.setAttribute("quest", Questions.VOPROS8); session.setAttribute("ru", 4000);}
            case "t8" -> {session.setAttribute("quest", Questions.VOPROS9); session.setAttribute("ru", 8000);}
            case "t9" -> {session.setAttribute("quest", Questions.VOPROS10); session.setAttribute("ru", 16000);}
            case "t10" -> {session.setAttribute("quest", Questions.VOPROS11); session.setAttribute("ru", 32000);}
            case "t11" -> {session.setAttribute("quest", Questions.VOPROS12); session.setAttribute("ru", 64000);}
            case "t12" -> {session.setAttribute("quest", Questions.VOPROS13); session.setAttribute("ru", 125000);}
            case "t13" -> {session.setAttribute("quest", Questions.VOPROS14); session.setAttribute("ru", 250000);}
            case "t14" -> {session.setAttribute("quest", Questions.VOPROS15); session.setAttribute("ru", 500000);}
            case "t15" -> {session.setAttribute("quest", Questions.WIN); session.setAttribute("ru", 1000000);}
        }

            resp.sendRedirect("/mill");
        }

}
