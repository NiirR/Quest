package servlet;

import entity.Area;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static org.junit.jupiter.api.Assertions.assertEquals;


public class QuestServletTest {

    @Test
    public void testDoPost() throws Exception {
        HttpServletRequest request = Mockito.mock(HttpServletRequest.class);
        HttpServletResponse response = Mockito.mock(HttpServletResponse.class);
        HttpSession session = Mockito.mock(HttpSession.class);

        Mockito.when(request.getSession()).thenReturn(session);
        Mockito.when(session.getAttribute("quest")).thenReturn("quest");


        QuestServlet servlet = new QuestServlet();
        servlet.doPost(request, response);

        assertEquals("quest",  session.getAttribute("quest"));
    }
}
