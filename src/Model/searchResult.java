package Model;

public class searchResult {
    private Flight flight;
    String seatType;
    String totalSeats;
    String price;

    public searchResult(Flight flight,String seatType,String totalSeats,String price)
    {
        this.flight=flight;
        this.seatType=seatType;
        this.totalSeats=totalSeats;
        this.price=price;
    }

    public Flight getFlight() {
        return flight;
    }

    public String getPrice() {
        return price;
    }

    public String getSeatType() {
        return seatType;
    }

    public String getTotalSeats() {
        return totalSeats;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public void setSeatType(String seatType) {
        this.seatType = seatType;
    }

    public void setTotalSeats(String totalSeats) {
        this.totalSeats = totalSeats;
    }
}
