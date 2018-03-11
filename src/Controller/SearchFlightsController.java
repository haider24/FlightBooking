package Controller;

import Model.DBHelper;
import Model.Flight;
import Model.searchResult;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SearchFlightsController")
public class SearchFlightsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        RequestDispatcher rd=null;

        String date=request.getParameter("date");
        String type=request.getParameter("class");
        String seats=request.getParameter("seats");
        HttpSession session=request.getSession();
        session.setAttribute("date",date);
        session.setAttribute("class",type);
        session.setAttribute("seats",seats);

        DBHelper helper=new DBHelper();
        ArrayList<searchResult> flights=helper.searchFlights(request);
        request.setAttribute("list",flights);
        rd = request.getRequestDispatcher("View/searchresults.jsp");
        rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
