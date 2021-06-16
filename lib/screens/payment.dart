import 'package:flutter/material.dart';
import './booking-confirm.dart';

class PaymentScreen extends StatelessWidget {
  static const routeName = '/payment';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Payment Option"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount Payable",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "\u{20B9} 3500",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height),
              child: Text(
                "My Cards",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Container(
              width: 0.96 * deviceSize.width,
              margin: EdgeInsets.symmetric(horizontal: 0.02 * deviceSize.width),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text(
                  "Add a Debit/Credit Card",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height),
              child: Text(
                "Wallets",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Container(
              width: 0.96 * deviceSize.width,
              margin: EdgeInsets.symmetric(horizontal: 0.02 * deviceSize.width),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      "assets/Images/amazon.png",
                      width: 50,
                    ),
                    title: Text(
                      "Amazon Pay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Link/Create",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      "assets/Images/paytm.png",
                    ),
                    title: Text(
                      "Paytm",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Link",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height),
              child: Text(
                "UPI(GPay, PhonePe etc)",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Container(
              width: 0.96 * deviceSize.width,
              margin: EdgeInsets.symmetric(horizontal: 0.02 * deviceSize.width),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: ListTile(
                leading: Image.asset(
                  "assets/Images/UPI.png",
                ),
                title: Text(
                  "UPI",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                trailing: Text(
                  "Select App",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.03 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height),
              child: Text(
                "Net Banking",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ),
            Container(
              width: 0.96 * deviceSize.width,
              margin: EdgeInsets.symmetric(horizontal: 0.02 * deviceSize.width),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .pushNamed(BookingConfirmScreen.routeName),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/Images/SBI.png",
                        width: 50,
                      ),
                      title: Text(
                        "SBI",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        "Pay Now",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      "assets/Images/HDFC.jpg",
                    ),
                    title: Text(
                      "HDFC",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      "assets/Images/ICICI.jpg",
                      height: 30,
                    ),
                    title: Text(
                      "ICICI",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      "assets/Images/BOI.png",
                      height: 30,
                    ),
                    title: Text(
                      "Bank of India",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    trailing: Text(
                      "Pay Now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
