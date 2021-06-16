import 'package:flutter/material.dart';

class WalletTransactionsScreen extends StatelessWidget {
  static const routeName = '/credits';
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Credits"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 0.8 * deviceSize.width,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Booking ID to Search',
              ),
            ),
          ),
          SizedBox(
            height: 0.02 * deviceSize.height,
          ),
          Container(
            height: 0.800 * deviceSize.height,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.flight_land_rounded,
                        size: 30,
                      ),
                      title: Text(
                        "Booking",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "ID:123456",
                      ),
                      trailing: Text(
                        "\u{20B9} 5000",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('24/04/2021'),
                          Text('Balance : \u{20B9}499')
                        ],
                      ),
                    ),
                    Divider(
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                    ),
                  ],
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
