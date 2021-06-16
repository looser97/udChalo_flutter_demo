import 'package:flutter/material.dart';
import '../screens/hotel_details.dart';
import '../screens/search.dart';

class MenuGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(SearchScreen.routeName);
                        },
                        child: Image.asset(
                          'assets/Images/Flight.png',
                          height: 50,
                        ),
                      ),
                      Text(
                        "Flights",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/Train.png',
                        height: 50,
                      ),
                      Text(
                        "Trains",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/Bus.png',
                        height: 50,
                      ),
                      Text(
                        "Buses",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/Cab.png',
                        height: 50,
                      ),
                      Text(
                        "Cabs",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(HotelDetailsScreen.routeName);
                        },
                        child: Image.asset(
                          'assets/Images/Hotel.png',
                          height: 50,
                        ),
                      ),
                      Text(
                        "Hotels",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/Tax.png',
                        height: 50,
                      ),
                      Text(
                        "uTax",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/Insurance.png',
                        height: 50,
                      ),
                      Text(
                        "Covid Insurance",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/Images/House.png',
                        height: 50,
                      ),
                      Text(
                        "Group Housing",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
