import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:udChalo_demo/screens/search.dart';
import '../screens/search_result.dart';
import '../models/airport.dart';
import 'package:provider/provider.dart';
import '../models/search.dart';

class SearchForm extends StatefulWidget {
  @override
  _SearchFormState createState() => _SearchFormState();
}

enum CabinType { economy, business, firstClass }

Map<CabinType, String> _cabinTypes = {
  CabinType.economy: 'Economy',
  CabinType.business: 'Business',
  CabinType.firstClass: 'First Class'
};

class _SearchFormState extends State<SearchForm> {
  CabinType _selectedCabin = CabinType.economy;
  bool _checkedValue = false;
  int _adultCount = 1;
  int _childCount = 0;
  DateTime onwardDate = DateTime.now();
  DateTime returnDate = DateTime.now();

  void _selectDate(BuildContext context, String type) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: onwardDate,
      firstDate: onwardDate,
      lastDate: DateTime(2025),
    );
    if (picked != null)
      setState(() {
        if (type == 'onward')
          onwardDate = picked;
        else
          returnDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    var origin = Provider.of<Search>(context).origin;
    final deviceSize = MediaQuery.of(context).size;
    var destination = Provider.of<Search>(context).destination;
    var searchData = Provider.of<Search>(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 0.1 * deviceSize.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => showSearch(
                      context: context,
                      delegate: SearchAirport("origin", searchData)),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "From",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(
                          "${origin.code}",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.send_outlined,
                              color: Colors.grey,
                            ),
                            Text(
                              "${origin.city}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fill,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.swap_horiz_sharp,
                        size: 50,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () => showSearch(
                      context: context,
                      delegate: SearchAirport("destination", searchData)),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "To",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        Text(
                          "${destination.code}",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_location,
                              color: Colors.grey,
                            ),
                            Text(
                              "${destination.city}",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Divider(),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          // Calender Section Start Here
          Container(
            height: 0.1 * deviceSize.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => _selectDate(context, 'onward'),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Departure",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${DateFormat("d MMM").format(onwardDate)}",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${DateFormat("EEEE y").format(returnDate)}",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: searchData.tripType == TripType.oneway
                      ? null
                      : () => _selectDate(context, 'return'),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Return",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${DateFormat("d MMM").format(returnDate)}",
                          style: TextStyle(
                            color: searchData.tripType == TripType.oneway ? Colors.grey : Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${DateFormat("EEEE y").format(returnDate)}",
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Divider(),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          // Passenger Section Starts Here
          Container(
            height: 0.1 * deviceSize.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Passengers",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Adults",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "12+ Year",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_adultCount < 6) {
                                _adultCount++;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          _adultCount.toString(),
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_adultCount > 1) {
                                _adultCount--;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Childs",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "5-12 Year",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_childCount < 6) {
                                _childCount++;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_up,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          _childCount.toString(),
                          style: TextStyle(
                            color: Color.fromRGBO(0, 56, 140, 1.0),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_childCount > 0) {
                                _childCount--;
                              }
                            });
                          },
                          child: Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Divider(),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Container(
            height: 0.06 * deviceSize.height,
            width: 0.8 * deviceSize.width,
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: FittedBox(
              fit: BoxFit.fill,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_cabinTypes.length, (index) {
                  return buildCabinTypeSelector(
                      _cabinTypes.keys.elementAt(index));
                }),
              ),
            ),
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Container(
            height: 0.08 * deviceSize.height,
            child: CheckboxListTile(
              title: FittedBox(
                  fit: BoxFit.fill,
                  child: Text("I am from the Defence Forces")),
              activeColor: Color.fromRGBO(0, 56, 140, 1.0),
              value: _checkedValue,
              onChanged: (newValue) {
                setState(() {
                  _checkedValue = newValue;
                });
              },
              controlAffinity:
                  ListTileControlAffinity.leading, //  <-- leading Checkbox
            ),
          ),
          SizedBox(
            height: 0.01 * deviceSize.height,
          ),
          Container(
            height: 0.05 * deviceSize.height,
            child: FittedBox(
              fit: BoxFit.fill,
              child: FlatButton(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.8 * deviceSize.width,
                      vertical: 0.02 * deviceSize.height),
                  onPressed: () {
                    Navigator.of(context).pushNamed(SearchResult.routeName);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: Color.fromRGBO(0, 56, 140, 1.0),
                  child: Text(
                    "Search Flights",
                    style: TextStyle(fontSize: 70, color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCabinTypeSelector(CabinType cabinType) {
    var isSelected = _selectedCabin == cabinType;
    return FlatButton(
      padding: EdgeInsets.only(left: 15, right: 15),
      onPressed: () {
        setState(() {
          _selectedCabin = cabinType;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      color: isSelected ? Color.fromRGBO(0, 56, 140, 1.0) : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _cabinTypes[cabinType],
            style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          )
        ],
      ),
    );
  }
}

class SearchAirport extends SearchDelegate<dynamic> {
  final type;
  final searchData;
  SearchAirport(this.type, this.searchData);
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var allAirports = Airports().airports;
    var airports = query == ""
        ? allAirports.toList()
        : allAirports
            .where((element) => (element["city"] as String)
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: airports.length,
      itemBuilder: (ctx, index) {
        final item = airports[index];
        return ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          onTap: () {
            final airportToSet = new Airport(
                item["airportCode"], item["airportName"], item["city"]);
            if (type == "origin") {
              searchData.origin = airportToSet;
            } else {
              searchData.destination = airportToSet;
            }
            close(context, null);
          },
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.flight),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "${item["city"]} (${item["airportCode"]}), India",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 32),
                child: Text(
                  "${item["airportName"]}",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Divider()
            ],
          ),
        );
      },
    );
  }
}
