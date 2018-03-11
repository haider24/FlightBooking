package Controller;

import Model.Flight;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddFlightController")
public class AddFlightController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String flightno=request.getParameter("flightno");
        String from=request.getParameter("from");
        String to=request.getParameter("to");
        String date=request.getParameter("date");
        String time=request.getParameter("time");
        String economyseats=request.getParameter("economyseats");
        String economyprice=request.getParameter("economyprice");
        String firstclassseats=request.getParameter("firstclassseats");
        String firstclassprice=request.getParameter("firstclassprice");
        String businessseats=request.getParameter("businessseats");
        String businessprice=request.getParameter("businessprice");
        String totalseats=request.getParameter("totalseats");

        Flight flight=new Flight("0",flightno,from,to,date,time,economyseats,economyprice,firstclassseats,firstclassprice,businessseats,businessprice,totalseats);
        if(flight.saveInDb(request))
        {request.setAttribute("flightno",flightno);}
        else
        {
            request.setAttribute("flightno","notsaved");
        }

        RequestDispatcher rd=null;
        rd = request.getRequestDispatcher("View/test.jsp");

        rd.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
