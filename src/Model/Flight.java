package Model;

import org.w3c.dom.html.HTMLTableCaptionElement;

import javax.servlet.http.HttpServletRequest;
import java.sql.*;
import java.util.ArrayList;

public class Flight {
    String id;
    String flightno;
    String from;
    String to;
    String date;
    String time;
    String economyseats;
    String economyprice;
    String firstclassseats;
    String firstclassprice;
    String businessseats;
    String businessprice;
    String approved;
    String totalseats;


    public Flight()
    {

    }

    public Flight(String id,String flightno, String from, String to, String date, String time, String economyseats, String economyprice, String firstclassseats, String firstclassprice, String businessseats, String businessprice,String totalseats)
    { this.id=id;
      this.flightno=flightno;
      this.from=from;
      this.to=to;
      this.date=date;
      this.time=time;
      this.economyseats=economyseats;
      this.economyprice=economyprice;
      this.firstclassseats=firstclassseats;
      this.firstclassprice=firstclassprice;
      this.businessseats=businessseats;
      this.businessprice=businessprice;
      approved="0";
      this.totalseats=totalseats;
    }

    public Boolean saveInDb(HttpServletRequest request)
    {
        PreparedStatement prepStmt;
        Connection connection;
        ResultSet set;

        try {

            connection=(Connection) request.getServletContext().getAttribute("dbconnection");



                synchronized (connection){
                    prepStmt = connection.prepareCall("Insert into flights  values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?,?,?)");
                }

            prepStmt.setString(1, approved);
            prepStmt.setString(2, flightno);
            prepStmt.setString(3, economyseats);
            prepStmt.setString(4, economyprice);
            prepStmt.setString(5, firstclassseats);
            prepStmt.setString(6, firstclassprice);
            prepStmt.setString(7, businessseats);
            prepStmt.setString(8, businessprice);
            prepStmt.setString(9, id);
            prepStmt.setString(10, from);
            prepStmt.setString(11, to);
            prepStmt.setString(12, date);
            prepStmt.setString(13, time);
            prepStmt.setString(14, totalseats);
            prepStmt.setString(15, economyseats);
            prepStmt.setString(16, firstclassseats);
            prepStmt.setString(17, businessseats);
                prepStmt.execute();
                return true;


        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public String getId() {
        return id;
    }

    public String getBusinessseats() {
        return businessseats;
    }

    public String getDate() {
        return date;
    }

    public String getApproved() {
        return approved;
    }

    public String getBusinessprice() {
        return businessprice;
    }

    public String getEconomyprice() {
        return economyprice;
    }

    public String getEconomyseats() {
        return economyseats;
    }

    public String getFirstclassprice() {
        return firstclassprice;
    }

    public String getFirstclassseats() {
        return firstclassseats;
    }

    public String getFlightno() {
        return flightno;

    }

    public String getFrom() {
        return from;
    }

    public String getTime() {
        return time;
    }

    public String getTo() {
        return to;
    }

    public void setBusinessseats(String businessseats) {
        this.businessseats = businessseats;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setApproved(String approved) {
        this.approved = approved;
    }

    public void setBusinessprice(String businessprice) {
        this.businessprice = businessprice;
    }

    public void setEconomyprice(String economyprice) {
        this.economyprice = economyprice;
    }

    public void setEconomyseats(String economyseats) {
        this.economyseats = economyseats;
    }

    public void setFirstclassprice(String firstclassprice) {
        this.firstclassprice = firstclassprice;
    }

    public void setFlightno(String flightno) {
        this.flightno = flightno;
    }

    public void setFirstclassseats(String firstclassseats) {
        this.firstclassseats = firstclassseats;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public void setId(String id) {
        this.id = id;
    }
}
