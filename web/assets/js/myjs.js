function validateForm() {
    var economy = document.getElementById("economyseats").value;
    var business = document.getElementById("businessseats").value;
    var firstclass = document.getElementById("firstclassseats").value;
    var total = Number(document.getElementById("totalseats").value);
    var totalseats=Number(economy)+Number(business)+Number(firstclass);
    console.log(total);
    console.log(totalseats);
    if (total!=totalseats) {
        document.getElementById("totalseats").focus();
        alert("Total Seats must match the sum of seats of all classes ");
        return false;
    }
    return true;
}

function setMinDate() {
    console.log("called");
var t=document.getElementById("departuredate").value;
var minDate=new Date(String(t));
minDate.setDate(minDate.getDate()+1);
var today = new Date(minDate).toISOString().split('T')[0];
document.getElementById("arrivaldate").setAttribute('min', today);
}

function setModal (t) {
    console.log("in function");
    var id=t.id.value;
    var economy=t.economy.value;
    var first=t.first.value;
    var business=t.business.value;
    document.getElementById("id").value=id;
    document.getElementById("economyprice").value=economy;
    document.getElementById("firstclassprice").value=first;
    document.getElementById("businessprice").value=business;
    return false;

}