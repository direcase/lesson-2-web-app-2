package kz.edu.astanait;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LessonServlet")
public class OrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            response.sendRedirect("https://web.whatsapp.com/");
        }catch (Exception e){
            System.out.println("Error with redirect");
        }
    }
    //init
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Order lesson= addOrder(request, response);
        request.setAttribute("lesson",lesson);
        request.getRequestDispatcher("/WEB-INF/ViewOrder.jsp").forward(request,response);
    }


    //method of adding Order
    private Order addOrder(HttpServletRequest request, HttpServletResponse response){
        Order order=new Order();
        String lessonId="1";
        order.setOrder_id(lessonId);
        order.setCustomer_name(request.getParameter("name"));
        order.setCustomer_number(request.getParameter("number"));
        order.setDrink(request.getParameter("drink"));
        order.setSizeOrder(request.getParameter("size"));
        return order;
    }
}
