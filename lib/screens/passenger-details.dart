import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/search.dart';
import 'package:intl/intl.dart';
import './payment.dart';

class PassengerDetailsScreen extends StatefulWidget {
  static const routeName = '/passenger-deatils';
  @override
  _PassengerDetailsState createState() => _PassengerDetailsState();
}

class _PassengerDetailsState extends State<PassengerDetailsScreen> {
  bool _checkedValue = false;
  bool _checkedValueLtc = false;
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
    final deviceSize = MediaQuery.of(context).size;
    final flightId = ModalRoute.of(context).settings.arguments as String;
    var flightDetails = Provider.of<Search>(context).getFromId(flightId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
        elevation: 0,
        title: Text("Traveller Details"),
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
                onTap: () =>
                    Navigator.of(context).pushNamed(PaymentScreen.routeName),
                child: Container(
                  width: 0.5 * deviceSize.width,
                  height: 0.07 * deviceSize.height,
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.1 * deviceSize.width,
                    vertical: 0.04 * deviceSize.width,
                  ),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      "Proceed To Pay",
                      style: TextStyle(color: Colors.white, fontSize: 12),
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
                    height: 0.1 * deviceSize.height,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  Container(
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
                  Container(
                    padding: EdgeInsets.only(
                        left: 0.03 * deviceSize.width,
                        right: 0.03 * deviceSize.width,
                        top: 0.01 * deviceSize.height),
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
                    margin: EdgeInsets.only(top: 0.06 * deviceSize.height),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Traveller Details",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 56, 140, 1.0),
                            ),
                          ),
                          Column(
                            children: [
                              PassengerDetail("Adult", 1),
                              Divider(),
                              PassengerDetail("Child", 1),
                            ],
                          ),
                        ]),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.03 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
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
                margin: EdgeInsets.only(top: 0.01 * deviceSize.height),
                width: deviceSize.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Additional Services",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          fit: BoxFit.fill,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.shop_outlined),
                                  SizedBox(width: 5),
                                  Text("Extra Baggage")
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 56, 140, 1.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fill,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.fastfood_sharp),
                                  SizedBox(width: 10),
                                  Text("Meals")
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 56, 140, 1.0),
                                ),
                              )
                            ],
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.fill,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons
                                      .airline_seat_recline_extra_outlined),
                                  SizedBox(width: 10),
                                  Text("Seats")
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Add",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 56, 140, 1.0),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.03 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
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
                margin: EdgeInsets.only(top: 0.01 * deviceSize.height),
                width: deviceSize.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LTC Documents",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text("I want to get LTC Documents for my journey"),
                      activeColor: Color.fromRGBO(0, 56, 140, 1.0),
                      value: _checkedValueLtc,
                      onChanged: (newValue) {
                        setState(() {
                          _checkedValueLtc = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.03 * deviceSize.width,
                    vertical: 0.01 * deviceSize.height),
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
                margin: EdgeInsets.only(top: 0.01 * deviceSize.height),
                width: deviceSize.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Secure Your Trip",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                          "Pay \u{20B9} 135/traveller and secure your trip with travel insurance."),
                      activeColor: Color.fromRGBO(0, 56, 140, 1.0),
                      value: _checkedValue,
                      onChanged: (newValue) {
                        setState(() {
                          _checkedValue = newValue;
                        });
                      },
                      controlAffinity: ListTileControlAffinity
                          .leading, //  <-- leading Checkbox
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
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
                margin: EdgeInsets.only(top: 0.01 * deviceSize.height),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  title: Text(
                    "Contact Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                        fontSize: 18),
                  ),
                  tilePadding: EdgeInsets.zero,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Full Name',
                                labelStyle: TextStyle(fontSize: 12)),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(fontSize: 12)),
                            keyboardType: TextInputType.number,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(fontSize: 12)),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassengerDetail extends StatefulWidget {
  final String type;
  final int number;
  PassengerDetail(this.type, this.number);
  @override
  _PassengerDetailState createState() => _PassengerDetailState();
}

class _PassengerDetailState extends State<PassengerDetail> {
  DateTime _selectedDate = new DateTime.now();

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Theme(
      data: theme,
      child: ExpansionTile(
        initiallyExpanded:
            widget.type == 'Adult' && widget.number == 1 ? true : false,
        tilePadding: EdgeInsets.zero,
        title: Text(
          "${widget.type} ${widget.number.toString()}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'First & Middle Name',
                      labelStyle: TextStyle(fontSize: 12)),
                  scrollPadding: EdgeInsets.zero,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(fontSize: 12)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          _selectedDate == null
                              ? 'No Date Selected'
                              : "Date of Birth : ${DateFormat.yMMMd().format(_selectedDate)}",
                        ),
                      ),
                      FlatButton(
                        textColor: Theme.of(context).primaryColor,
                        onPressed: _presentDatePicker,
                        child: Text(
                          "Select Date of Birth",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
