import 'package:flutter/material.dart';

class HotelPhotos extends StatelessWidget {
  final cities = [
    {"imagePath": "assets/Images/Hotel_1.png"},
    {"imagePath": "assets/Images/Hotel_2.jpeg"},
    {"imagePath": "assets/Images/Hotel_3.jpg"},
    {"imagePath": "assets/Images/Hotel_4.jpg"},
    {"imagePath": "assets/Images/Hotel_5.jpg"}
  ];
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
        itemCount: cities.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            child: Container(
              height: 100.0,
              width: deviceSize.width * 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                child: Image.asset(
                  cities[index]['imagePath'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        });
  }
}