package Controller;

import Model.DBHelper;
import Model.Flight;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ManagerHomepageController")
public class ManagerHomepageController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher rd=null;

        DBHelper helper=new DBHelper();
        ArrayList<Flight> flights=helper.getUnApprovedFlights(request);
        request.setAttribute("list",flights);
        rd = request.getRequestDispatcher("View/managerhomepage.jsp");
        rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
