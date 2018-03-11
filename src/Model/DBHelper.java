package Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

public class DBHelper {

    public ArrayList<Flight> getUnApprovedFlights(HttpServletRequest request)
    {
        ArrayList<Flight> flights= new ArrayList<>();

        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");



            synchronized (connection){
                prepStmt = connection.prepareCall("SELECT * FROM  flights WHERE approved=? ");
            }

            prepStmt.setString(1, "0");
            set=prepStmt.executeQuery();

            while (set.next()) {
                Flight f = new Flight(set.getString(1),set.getString(2),set.getString(10),set.getString(11),set.getString(12),set.getString(13),set.getString(3),set.getString(4),set.getString(5),set.getString(6),set.getString(7),set.getString(8),set.getString(14));
                flights.add(f);
            }



        } catch (Exception e) {
            e.printStackTrace();
        }

        return flights;
    }

    public void approveFlights(HttpServletRequest request)
    {
        ArrayList<Flight> unApprovedFlights=getUnApprovedFlights(request);

        for(int i=0;i<unApprovedFlights.size();i++)
        {
            String id=unApprovedFlights.get(i).getId();
            approveFlight(id,request);

        }
    }

    void approveFlight(String id, HttpServletRequest request)
    {
        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");

            synchronized (connection){

                if(request.getParameter(id).equals("approve"))
                {
                    prepStmt = connection.prepareCall("UPDATE flights SET approved=1 WHERE id=?");
                    prepStmt.setString(1, id);
                    prepStmt.execute();
                }
                else if (request.getParameter(id).equals("reject"))
                {
                    prepStmt = connection.prepareCall("DELETE FROM flights WHERE id=?");
                    prepStmt.setString(1, id);
                    prepStmt.execute();
                }

            }





        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<Flight> getAllFlights(HttpServletRequest request)
    {
        ArrayList<Flight> flights=new ArrayList<>();

        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");



            synchronized (connection){
                prepStmt = connection.prepareCall("SELECT * FROM  flights WHERE date>CURDATE() ");
            }

            set=prepStmt.executeQuery();

            while (set.next()) {
                Flight f = new Flight(set.getString(1),set.getString(2),set.getString(10),set.getString(11),set.getString(12),set.getString(13),set.getString(3),set.getString(4),set.getString(5),set.getString(6),set.getString(7),set.getString(8),set.getString(14));
                flights.add(f);
            }



        } catch (Exception e) {
            e.printStackTrace();
        }

        return flights;
    }

    public void updateFlight(HttpServletRequest request)
    {
        String id=request.getParameter("id");
        String economyprice=request.getParameter("economyprice");
        String firstclassprice=request.getParameter("firstclassprice");
        String businessprice=request.getParameter("businessprice");
        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");

            synchronized (connection){
                    prepStmt = connection.prepareCall("UPDATE flights SET economyprice=?,firstclassprice=?,businessprice=?,approved=0 WHERE id=?");
                    prepStmt.setString(1, economyprice);
                    prepStmt.setString(2, firstclassprice);
                    prepStmt.setString(3, businessprice);
                    prepStmt.setString(4, id);
                    prepStmt.execute();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public ArrayList<searchResult> searchFlights(HttpServletRequest request)
    {
        ArrayList<searchResult> flights=new ArrayList<>();
        String from=request.getParameter("from");
        String to=request.getParameter("to");
        String date=request.getParameter("date");
        String type=request.getParameter("class");
        String seats=request.getParameter("seats");

        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;
        int price=0;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");



            synchronized (connection){
                //prepStmt = connection.prepareCall("SELECT * FROM flights WHERE from=? AND to=? AND date=? AND economyavailable >= ? ");
                prepStmt = connection.prepareCall("SELECT * FROM flights WHERE approved=1 AND LOWER(source)=LOWER(?) AND LOWER(destination)=LOWER(?) AND date=? and ?>=?");
            }

            prepStmt.setString(1, from);
            prepStmt.setString(2, to);
            prepStmt.setString(3, date);
            prepStmt.setString(4, type+"available");
            prepStmt.setString(5, seats);

            set=prepStmt.executeQuery();

            while (set.next()) {
                Flight f = new Flight(set.getString(1),set.getString(2),set.getString(10),set.getString(11),set.getString(12),set.getString(13),set.getString(3),set.getString(4),set.getString(5),set.getString(6),set.getString(7),set.getString(8),set.getString(14));
                if(type.equals("economy"))
                {
                    price=Integer.valueOf(f.getEconomyprice())*Integer.valueOf(seats);
                }
                else if(type.equals("firstclass"))
                {
                    price=Integer.valueOf(f.getFirstclassprice())*Integer.valueOf(seats);
                }
                else if(type.equals("business"))
                {
                    price=Integer.valueOf(f.getBusinessprice())*Integer.valueOf(seats);
                }
                searchResult result=new searchResult(f,type,seats,String.valueOf(price));
                flights.add(result);

            }



        } catch (Exception e) {
            e.printStackTrace();
        }

        return flights;

    }

    public boolean checkBookingDeatails(HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        String user=(String) session.getAttribute("username");
        String date=(String)session.getAttribute("date");

        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");

            synchronized (connection){
                prepStmt = connection.prepareCall("SELECT * FROM booking WHERE user=? AND date=?");
                prepStmt.setString(1, user);
                prepStmt.setString(2, date);

                set=prepStmt.executeQuery();
                set.last();
                if(set.getRow()>0)
                {
                    return false;
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


        return true;
    }

    public searchResult getFlight(HttpServletRequest request)
    {
        String flightid=request.getParameter("flightid");
        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;
        HttpSession session=request.getSession();
        String type=(String) session.getAttribute("class");
        String seats=(String) session.getAttribute("seats");
        int price=0;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");



            synchronized (connection){
                prepStmt = connection.prepareCall("SELECT * FROM flights WHERE id=?");
            }
            prepStmt.setString(1, flightid);

            set=prepStmt.executeQuery();

            set.next();
                Flight f = new Flight(set.getString(1),set.getString(2),set.getString(10),set.getString(11),set.getString(12),set.getString(13),set.getString(3),set.getString(4),set.getString(5),set.getString(6),set.getString(7),set.getString(8),set.getString(14));
                if(type.equals("economy"))
                {
                    price=Integer.valueOf(f.getEconomyprice())*Integer.valueOf(seats);
                }
                else if(type.equals("firstclass"))
                {
                    price=Integer.valueOf(f.getFirstclassprice())*Integer.valueOf(seats);
                }
                else if(type.equals("business"))
                {
                    price=Integer.valueOf(f.getBusinessprice())*Integer.valueOf(seats);
                }

            searchResult result=new searchResult(f,type,seats,String.valueOf(price));
            return result;



        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void addBooking(HttpServletRequest request)
    {
        HttpSession session=request.getSession();
        String username=(String) session.getAttribute("username");
        String type=(String) session.getAttribute("class");
        String seats=(String) session.getAttribute("seats");
        String flightid=request.getParameter("flightid");
        String date=request.getParameter("date");
        String price=request.getParameter("price");;

        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");

            synchronized (connection){
                prepStmt = connection.prepareCall("Insert into booking  values (?, ?, ?, ?, ?, ?, ?)");
            }

            prepStmt.setString(1, "0");
            prepStmt.setString(2, username);
            prepStmt.setString(3, flightid);
            prepStmt.setString(4, type);
            prepStmt.setString(5, seats);
            prepStmt.setString(6, price);
            prepStmt.setString(7, date);

            prepStmt.execute();

            String temp=type+"available";
            prepStmt = connection.prepareCall("UPDATE flights SET ?=?-? where id=? ");

            prepStmt.setString(1, temp);
            prepStmt.setString(2, temp);
            prepStmt.setString(3, seats);
            prepStmt.setString(4, flightid);

            prepStmt.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}
