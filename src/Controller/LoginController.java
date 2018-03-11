package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.Principal;

public class LoginController extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        RequestDispatcher rd=null;

        if(request.isUserInRole("admin"))
        {
            rd = request.getRequestDispatcher("View/adminhomepage.jsp");
        }
        else if(request.isUserInRole("manager"))
        {
           response.sendRedirect("/managerhomepage");
           return;
        }
        else if(request.isUserInRole("customer"))
        {
            rd = request.getRequestDispatcher("View/booking.jsp");
        }
        else
        {
            rd = request.getRequestDispatcher("View/booking.jsp");
        }

        String  username=request.getUserPrincipal().getName();
        HttpSession session=request.getSession();
        session.setAttribute("username",username);
        rd.forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
