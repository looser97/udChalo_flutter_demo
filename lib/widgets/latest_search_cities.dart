import 'package:flutter/material.dart';

class LatestSearchCities extends StatelessWidget {
  final cities = [
    {"imagePath": "assets/Images/goa.jpeg", "cityName": "Goa"},
    {"imagePath": "assets/Images/munnar.jpg", "cityName": "Munnar"},
    {"imagePath": "assets/Images/manali.jpeg", "cityName": "Manali"},
    {"imagePath": "assets/Images/jaipur.jpeg", "cityName": "Jaipur"}
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cities.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CityCard(cities[index]);
        });
  }
}

class CityCard extends StatelessWidget {
  final city;
  CityCard(this.city);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 160.0,
                  width: 0.8 * deviceSize.width,
                  child: Image.asset(
                    city['imagePath'],
                    fit: BoxFit.cover,
                  ),
                ),
                /* Positioned(
                  left: 0.0,
                  bottom: 0.0,
                  width: 160.0,
                  height: 60.0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                          Colors.black,
                          Colors.black.withOpacity(0.1),
                        ])),
                  ),
                ), */
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  right: 10.0,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            city['cityName'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18.0),
                          ),
                        ],
                      ),
                      Container(
                        child: Text(
                          '25 Feb 2020',
                          style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold),
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
    );
  }
}
