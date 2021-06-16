import 'package:flutter/material.dart';
import '../widgets/hotel_photos.dart';
import 'package:readmore/readmore.dart';

class HotelDetailsScreen extends StatelessWidget {
  static const routeName = "/hotel-details";

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final description =
        "Hotel Jehan Numa Palace is a popular choice amongst travelers in Bhopal, whether exploring or just passing through. The hotel has everything you need for a comfortable stay. 24-hour room service, free Wi-Fi in all rooms, daily housekeeping, taxi service, wheelchair accessible are on the list of things guests can enjoy. Some of the well-appointed guestrooms feature television LCD/plasma screen, linens, mirror, towels, internet access – wireless. Enjoy the hotel's recreational facilities, including fitness center, sauna, outdoor pool, spa, massage, before retiring to your room for a well-deserved rest. Convenience and comfort makes Hotel Jehan Numa Palace the perfect choice for your stay in Bhopal.";
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 0.1 * deviceSize.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    side: BorderSide(
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                    )),
                onPressed: () {},
                color: Color.fromRGBO(0, 56, 140, 1.0),
                textColor: Colors.white,
                child: Text("Book a Room".toUpperCase(),
                    style: TextStyle(fontSize: 18)),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.pink[50],
                ),
                height: 54,
                width: 64,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 30,
                ),
              )
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: deviceSize.height * 0.4,
            width: deviceSize.width,
            child: HotelPhotos(),
          ),
          Container(
            margin: EdgeInsets.only(top: deviceSize.height * 0.37),
            height: deviceSize.height * 0.6,
            width: deviceSize.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(40.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 0.07 * deviceSize.height,
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.orange,
                        ),
                        SizedBox(
                          width: 0.03 * deviceSize.width,
                        ),
                        Text(
                          "748 Reviews",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 0.04 * deviceSize.height,
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Text(
                      "Hotel Jehan Numa Palace",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Text(
                      "157, Shamala Hills, Bhopal, Madhya Pradesh, IN 462013",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width,
                        vertical: 0.02 * deviceSize.height),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    width: deviceSize.width * 0.9,
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
                        "15 Jan - 16 Jan | 1 Room | 2 Guests",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        top: 0.02 * deviceSize.height),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Text(
                      "Amenities",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        top: 0.01 * deviceSize.height),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.king_bed),
                            Text("Play Area"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.pool),
                            Text("Swimming Pool"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.local_parking),
                            Text("Parking"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.wine_bar),
                            Text("Bar"),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.clear_all),
                            Text("Show All"),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        top: 0.03 * deviceSize.height),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Text(
                      "About Hotel",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 0.01 * deviceSize.height),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: ReadMoreText(
                      description,
                      trimLines: 3,
                      colorClickableText: Color.fromRGBO(0, 56, 140, 1.0),
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: 'Show less',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsetsDirectional.only(
                        top: 0.03 * deviceSize.height),
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    child: Text(
                      "Location",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 56, 140, 1.0)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 0.05 * deviceSize.width),
                    height: 200.0,
                    width: deviceSize.width * 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      child: Image.asset(
                        "assets/Images/location.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
