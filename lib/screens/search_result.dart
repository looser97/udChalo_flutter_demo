import 'package:flutter/material.dart';
import 'package:horizontal_calendar_widget/horizontal_calendar.dart';
import 'package:provider/provider.dart';
import '../models/search.dart';
import 'package:intl/intl.dart';
import '../screens/review.dart';

class SearchResult extends StatefulWidget {
  static const routeName = '/search-result';
  @override
  _SearchResultState createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  DateTime firstDate = DateTime.now();
  DateTime lastDate = DateTime.now().add(Duration(days: 30));
  String dateFormat = 'dd';
  String monthFormat = 'MMM';
  String weekDayFormat = 'EEE';

  Color defaultDecorationColor = Colors.transparent;
  BoxShape defaultDecorationShape = BoxShape.rectangle;
  bool isCircularRadiusDefault = true;

  Color selectedDecorationColor = Colors.blue;
  BoxShape selectedDecorationShape = BoxShape.rectangle;
  bool isCircularRadiusSelected = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    print(deviceSize.height);
    var searchResult = Provider.of<Search>(context).searchResult;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        width: deviceSize.width,
        child: Column(
          children: [
            Container(
              height: 0.2 * deviceSize.height,
              color: Colors.white,
              child: Stack(
                children: [
                  Container(
                    height: 0.15 * deviceSize.height,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  Positioned(
                    top: 0.05 * deviceSize.height,
                    child: Container(
                      height: 0.05 * deviceSize.height,
                      width: 0.5 * deviceSize.width,
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.25 * deviceSize.width),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "New Delhi",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.flight,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Mumbai",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("10 Dec | 4 Travellers",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 0.05 * deviceSize.width,
                          top: 0.12 * deviceSize.height),
                      height: 0.075 * deviceSize.height,
                      width: 0.9 * deviceSize.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: HorizontalCalendar(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        firstDate: firstDate,
                        lastDate: lastDate,
                        monthTextStyle: TextStyle(fontSize: 12),
                        weekDayTextStyle: TextStyle(fontSize: 10),
                        dateTextStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        dateFormat: dateFormat,
                        weekDayFormat: weekDayFormat,
                        monthFormat: monthFormat,
                        defaultDecoration: BoxDecoration(
                          color: defaultDecorationColor,
                          shape: defaultDecorationShape,
                        ),
                        selectedDecoration: BoxDecoration(
                          color: selectedDecorationColor,
                          shape: selectedDecorationShape,
                        ),
                        minSelectedDateCount: 1,
                        maxSelectedDateCount: 1,
                        initialSelectedDates: [DateTime.now()],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 0.725 * deviceSize.height,
              child: ListView.builder(
                itemCount: searchResult.length,
                padding: EdgeInsets.only(top: 1, bottom: 1),
                itemBuilder: (context, index) {
                  return TicketView(searchResult[index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 0.075 * deviceSize.height,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.filter,
                size: 0.02 * deviceSize.height,
              ),
              label: 'Filters',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.sort,
                size: 0.02 * deviceSize.height,
              ),
              label: 'Sort',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromRGBO(0, 56, 140, 1.0),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class TicketView extends StatelessWidget {
  final flightData;
  TicketView(this.flightData);
  @override
  Widget build(BuildContext context) {
    final departDate = DateTime.parse(flightData["departDate"]);
    final arriveDate = DateTime.parse(flightData["arriveDate"]);
    var flightNumberArray = [];
    flightData["segments"].forEach((segment) => {
          flightNumberArray
              .add("${segment["airline"]}-${segment["flightNumber"]}")
        });
    final flightNumberString = flightNumberArray.join(" / ");
    return InkWell(
      onTap: () => Navigator.of(context)
          .pushNamed(ReviewScreen.routeName, arguments: flightData["flightId"]),
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(
                children: <Widget>[
                  Text(
                    "${((flightData["duration"] / 60).floor()).toString()}H ${(flightData["duration"] % 60).toString()}M",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "${DateFormat("HH:mm").format(departDate)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.indigo.shade400,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (context, constraints) {
                                    return Flex(
                                      children: List.generate(
                                          (constraints.constrainWidth() / 6)
                                              .floor(),
                                          (index) => SizedBox(
                                                height: 1,
                                                width: 3,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                      color: Colors.black),
                                                ),
                                              )),
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                    );
                                  },
                                ),
                              ),
                              Center(
                                  child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport,
                                  color: Color.fromRGBO(0, 56, 140, 1.0),
                                  size: 24,
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: SizedBox(
                          height: 8,
                          width: 8,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                color: Colors.pink.shade400,
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "${DateFormat("HH:mm").format(arriveDate)}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        child: Text(
                          "${flightData["origin"]}",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        flightData["stops"] == 0
                            ? "Non Stop"
                            : "${flightData["stops"]} stop",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        child: Text(
                          "${flightData["destination"]}",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  if (flightData["stops"] > 0)
                    Text(
                      "${((flightData["segments"][0]["layoverMinutes"] / 60).floor()).toString()}hr ${(flightData["segments"][0]["layoverMinutes"] % 60).toString()}min Layover at ${flightData["segments"][0]["layoverAirportCode"]}",
                      style: TextStyle(
                          color: Colors.red[200],
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.grey.shade200),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Flex(
                            children: List.generate(
                                (constraints.constrainWidth() / 10).floor(),
                                (index) => SizedBox(
                                      height: 1,
                                      width: 5,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade600),
                                      ),
                                    )),
                            direction: Axis.horizontal,
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Colors.grey.shade200),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24))),
              child: Row(
                children: <Widget>[
                  Image.network(
                    "https://static.udchalo.com/client_assets/img/airline_logo/${flightData["airline"]}.png",
                    height: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "$flightNumberString",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                  ),
                  Spacer(),
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                          )),
                      onPressed: () {},
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                      textColor: Colors.white,
                      child: Text(
                        "\u{20B9} ${flightData["fare"]["totalFare"]}"
                            .toUpperCase(),
                        style: TextStyle(fontSize: 14),
                      ),
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
