import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../models/search.dart';
import '../models/airport.dart';

class BookingConfirmScreen extends StatelessWidget {
  static const routeName = "/confirm-booking";

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    final deviceSize = MediaQuery.of(context).size;
    var flightDetails = Provider.of<Search>(context).selectedFlight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 0.07 * deviceSize.height,
          color: Colors.grey[50],
          child: Row(
            children: [
              Container(
                width: 0.498 * deviceSize.width,
                height: 0.07 * deviceSize.height,
                padding: EdgeInsets.symmetric(
                  horizontal: 0.05 * deviceSize.width,
                  vertical: 0.04 * deviceSize.width,
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    "Download Ticket",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                color: Color.fromRGBO(0, 56, 140, 1.0),
              ),
              VerticalDivider(
                color: Colors.white,
                width: 1,
              ),
              Container(
                width: 0.499 * deviceSize.width,
                height: 0.07 * deviceSize.height,
                padding: EdgeInsets.symmetric(
                  horizontal: 0.18 * deviceSize.width,
                  vertical: 0.04 * deviceSize.width,
                ),
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Text(
                    "Home",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
                color: Color.fromRGBO(0, 56, 140, 1.0),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    "PNR",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    "ABCDEF",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.green.shade600),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.01 * deviceSize.height),
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
              child: ExpansionTile(
                leading: Icon(
                  Icons.flight,
                  color: Color.fromRGBO(0, 56, 140, 1.0),
                ),
                title: Text(
                  "Itinerary",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                initiallyExpanded: true,
                children: [
                  Column(
                    children: [
                      SegmentDetails(flightDetails["segments"][0]),
                      if (flightDetails["segments"].length > 1)
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                                "Change of Planes | ${((flightDetails["segments"][0]["layoverMinutes"] / 60).floor()).toString()}hr ${(flightDetails["segments"][0]["layoverMinutes"] % 60).toString()}min layover in ${flightDetails["segments"][0]["destination"]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ),
                        ),
                      if (flightDetails["segments"].length > 1)
                        SegmentDetails(flightDetails["segments"][1]),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 0.01 * deviceSize.height),
              child: Theme(
                data: theme,
                child: ExpansionTile(
                  leading: Icon(
                    Icons.shop_outlined,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  title: Text(
                    "Baggage Allowance",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Hand Baggage'),
                          Text('7kg / person',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Check-in Baggage'),
                          Text('1 piece x 15kg / person',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 0.01 * deviceSize.height),
              child: Theme(
                data: theme,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  leading: Icon(
                    Icons.supervisor_account,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  title: Text(
                    "Traveller Information",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    Container(
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: [
                          TableRow(children: [
                            Center(
                                child: Text(
                              "Passenger",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              "Seat",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              "Meal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            Center(
                                child: Text(
                              "Baggage",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                          ]),
                          TableRow(children: [
                            SizedBox(height: 10), //SizeBox Widget
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                          ]),
                          TableRow(children: [
                            Center(child: Text("Deeptanshu")),
                            Center(child: Text("3A")),
                            Center(child: Text("Veg Samosa")),
                            Center(child: Text("15 kg")),
                          ]),
                          TableRow(children: [
                            SizedBox(height: 10), //SizeBox Widget
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                          ]),
                          TableRow(children: [
                            Center(child: Text("Vipin")),
                            Center(child: Text("3B")),
                            Center(child: Text("Sandwitch")),
                            Center(child: Text("-")),
                          ]),
                          TableRow(children: [
                            SizedBox(height: 10), //SizeBox Widget
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                            SizedBox(height: 10),
                          ]),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 0.01 * deviceSize.height),
              child: Theme(
                data: theme,
                child: ExpansionTile(
                  initiallyExpanded: true,
                  leading: Icon(
                    Icons.payment,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  title: Text(
                    "Payment Details",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    "\u{20B9} 3500",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "SBI Debit Card (ending with 7788)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("\u{20B9} 2800"),
                      subtitle: Text("Transaction Id : 29987689"),
                    ),
                    ListTile(
                      title: Text(
                        "udChalo Credits",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text("\u{20B9} 700"),
                      subtitle: Text("Transaction Id : 2943523689"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SegmentDetails extends StatelessWidget {
  final segment;
  SegmentDetails(this.segment);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final originAirport = Airports().getFromId(segment["origin"]);
    final destinationAirport = Airports().getFromId(segment["destination"]);
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 0.01 * deviceSize.height,
          horizontal: 0.02 * deviceSize.height),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                "https://static.udchalo.com/client_assets/img/airline_logo/${segment["airline"]}.png",
                height: 20,
              ),
              SizedBox(width: 0.01 * deviceSize.width),
              Text(
                "${segment["airline"]}-${segment["flightNumber"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${originAirport["city"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${destinationAirport["city"]}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DateFormat("HH:mm").format(DateTime.parse(segment["departDate"]))}",
                style: TextStyle(
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    "----------- ${((segment["duration"] / 60).floor()).toString()}h ${(segment["duration"] % 60).toString()}m ------------",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              Text(
                "${DateFormat("HH:mm").format(DateTime.parse(segment["arriveDate"]))}",
                style: TextStyle(
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DateFormat("EEE,dd MMM y").format(DateTime.parse(segment["departDate"]))}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Text(
                "${DateFormat("EEE,dd MMM y").format(DateTime.parse(segment["arriveDate"]))}",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
