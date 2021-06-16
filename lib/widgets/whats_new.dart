import 'package:flutter/material.dart';

class WhatsNew extends StatelessWidget {
  final _links = [
    {
      "icon": Icons.flight,
      "text1": "Pune -> Delhi",
      "text2": "3 Travellers | I5-702 | 26 Feb 20"
    },
    {
      "icon": Icons.car_rental,
      "text1": "BPL -> HWH",
      "text2": "6PM | 22 Feb 20"
    },
    {
      "icon": Icons.train_outlined,
      "text1": "Pune -> Banglore",
      "text2": "3 Pax | 12183 | 3AC | 12 Mar 20"
    }
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _links.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return NewItem(_links[index]["icon"], _links[index]["text1"],
              _links[index]["text2"]);
        });
  }
}

class NewItem extends StatelessWidget {
  final IconData icon;
  final String text1;
  final String text2;
  NewItem(this.icon, this.text1, this.text2);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 1,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Color.fromRGBO(0, 56, 140, 1.0),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      text2,
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 40,
            right: 25,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  )),
              onPressed: () {},
              color: Color.fromRGBO(0, 56, 140, 1.0),
              textColor: Colors.white,
              child: Text("Continue Booking".toUpperCase(),
                  style: TextStyle(fontSize: 12)),
            ),
          ),
          /* Positioned(
            top: 0,
            right: 10,
            child: Icon(Icons.close_rounded)
          ), */
        ],
      ),
    );
  }
}
