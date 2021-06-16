import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/passenger-details.dart';
import '../models/search.dart';
import '../models/airport.dart';
import 'package:intl/intl.dart';

class ReviewScreen extends StatefulWidget {
  static const routeName = '/review';
  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  void _openFare(BuildContext ctx, deviceSize, baseFare, tax, totalFare) {
    showDialog(
        context: context,
        builder: (_) => Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)), //this right here
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.08 * deviceSize.width,
                    vertical: 0.04 * deviceSize.height),
                height: 0.4 * deviceSize.height,
                width: 0.8 * deviceSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 0.05 * deviceSize.height,
                      child: Text(
                        "Fare Breakup",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontSize: 22),
                      ),
                    ),
                    Container(
                      height: 0.04 * deviceSize.height,
                      child: Text(
                        "Review Your Fare Deails",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 0.03 * deviceSize.height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Base Fare:",
                          ),
                          Text("\u{20B9} ${baseFare.toString()}")
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 0.03 * deviceSize.height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Taxes & Fees"),
                          Text("\u{20B9} ${tax.toString()}")
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      height: 0.03 * deviceSize.height,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Fare:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "\u{20B9} ${totalFare.toString()}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.02 * deviceSize.height,
                    ),
                    Container(
                      height: 0.02 * deviceSize.height,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Navigator.of(context).pop(),
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    final deviceSize = MediaQuery.of(context).size;
    final flightId = ModalRoute.of(context).settings.arguments as String;
    var flightDetails = Provider.of<Search>(context).getFromId(flightId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
        elevation: 0,
        title: Text("Review Details"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 0.07 * deviceSize.height,
          color: Colors.grey[50],
          child: Row(
            children: [
              Container(
                width: 0.5 * deviceSize.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          "\u{20B9} ${flightDetails["fare"]["totalFare"]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                      ),
                      SizedBox(width: 0.05 * deviceSize.width),
                      InkWell(
                        onTap: () => _openFare(
                            context,
                            deviceSize,
                            flightDetails["fare"]["baseTotalFare"],
                            flightDetails["fare"]["totalTax"],
                            flightDetails["fare"]["totalFare"]),
                        child: Icon(
                          Icons.info_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed(
                    PassengerDetailsScreen.routeName,
                    arguments: flightDetails["flightId"]),
                child: Container(
                  width: 0.5 * deviceSize.width,
                  height: 0.07 * deviceSize.height,
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.15 * deviceSize.width,
                    vertical: 0.04 * deviceSize.width,
                  ),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                  color: Color.fromRGBO(0, 56, 140, 1.0),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: deviceSize.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 0.05 * deviceSize.height,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  Container(
                    width: 0.96 * deviceSize.width,
                    padding: EdgeInsets.symmetric(
                      vertical: 0.01 * deviceSize.height,
                      horizontal: 0.03 * deviceSize.width,
                    ),
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
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.02 * deviceSize.width),
                    child: Column(
                      children: [
                        SegmentDetails(flightDetails["segments"][0]),
                        if (flightDetails["segments"].length > 1)
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color.fromRGBO(0, 56, 140, 1.0),
                              ),
                            ),
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
                  )
                ],
              ),
              Container(
                width: 0.96 * deviceSize.width,
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
                margin: EdgeInsets.symmetric(
                    horizontal: 0.02 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
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
                    initiallyExpanded: true,
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
                width: 0.96 * deviceSize.width,
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
                margin: EdgeInsets.symmetric(
                    horizontal: 0.02 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
                child: Theme(
                  data: theme,
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.cancel_rounded,
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                    ),
                    title: Text(
                      "Chancellation Fee",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Airline Fee'),
                            Text('\u{20B9} 3500 / person',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('udChalo Fee'),
                            Text('\u{20B9} 100 / person',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.96 * deviceSize.width,
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
                margin: EdgeInsets.symmetric(
                    horizontal: 0.02 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
                child: Theme(
                  data: theme,
                  child: ExpansionTile(
                    leading: Icon(
                      Icons.lock_clock,
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                    ),
                    title: Text(
                      "Rescheduling Fee",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Airline Fee'),
                            Text('\u{20B9} 3000 / person',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                      ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('udChalo Fee'),
                            Text('\u{20B9} 100 / person',
                                style: TextStyle(fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 0.96 * deviceSize.width,
                padding: EdgeInsets.symmetric(
                  horizontal: 0.02 * deviceSize.width,
                  vertical: 0.02 * deviceSize.height,
                ),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    )
                  ],
                ),
                margin: EdgeInsets.symmetric(
                    horizontal: 0.02 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
                child: Column(
                  children: [
                    Text(
                      "Mandatory check-list for passengers",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontSize: 16),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.02 * deviceSize.width,
                        vertical: 0.02 * deviceSize.height,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "1. Certify your health status through the Aarogya Setu app or the self-declaration form at the airport.",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "2. Remember to web check-in before arriving at the airport; carry a printed or soft copy of the boarding pass.",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                              "3. Please reach at least 2 hours prior to flight departure.",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("4. Face masks are compulsory.",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            "5. Remember to download the baggage tag(s) and affix it on your bag(s).",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
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
      padding: EdgeInsets.symmetric(vertical: 0.01 * deviceSize.height),
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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${DateFormat("EEE,dd MMM y").format(DateTime.parse(segment["arriveDate"]))}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (segment["departTerminal"] != null)
                Text(
                  "Terminal ${segment["departTerminal"]}",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              if (segment["arriveTerminal"] != null)
                Text(
                  "Terminal ${segment["arriveTerminal"]}",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${originAirport["airportName"]}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "${destinationAirport["airportName"]}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${originAirport["state"]},${originAirport["country"]}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              Text(
                "${destinationAirport["state"]},${destinationAirport["country"]}",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
