import 'package:flutter/material.dart';
import '../models/search.dart';
import '../widgets/search_form.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  static const routeName = '/search';

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

enum TripType { oneway, roundtrip }

Map<TripType, String> _tripTypes = {
  TripType.oneway: 'One Way',
  TripType.roundtrip: 'Round Trip'
};

class _SearchScreenState extends State<SearchScreen> {
  TripType _selectedTrip = TripType.oneway;
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: deviceSize.width,
          height: deviceSize.height,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 0.3 * deviceSize.height,
                    //color: Color.fromRGBO(0, 56, 140, 1.0),
                    child: AppBar(
                      centerTitle: true,
                      title: Text(
                        "Search Flights",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  Positioned(
                    top: 0.15 * deviceSize.height,
                    left: 0.15 * deviceSize.width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 0.7 * deviceSize.width,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 6),
                                    blurRadius: 6),
                              ]),
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  List.generate(_tripTypes.length, (index) {
                                return buildTripTypeSelector(
                                    _tripTypes.keys.elementAt(index));
                              }),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.05 * deviceSize.width,
                        0.25 * deviceSize.height, 0, 0),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.04 * deviceSize.width,
                        vertical: 0.02 * deviceSize.height),
                    height: 0.7 * deviceSize.height,
                    width: 0.9 * deviceSize.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: SearchForm(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTripTypeSelector(TripType tripType) {
    var isSelected = _selectedTrip == tripType;
    final searchData = Provider.of<Search>(context);
    return FlatButton(
      padding: EdgeInsets.only(left: 16, right: 16),
      onPressed: () {
        setState(() {
          _selectedTrip = tripType;
          searchData.tripType = tripType;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      color: isSelected ? Color.fromRGBO(0, 56, 140, 1.0) : Colors.transparent,
      child: Row(
        children: <Widget>[
          Text(
            _tripTypes[tripType],
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
