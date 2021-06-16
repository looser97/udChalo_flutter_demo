import 'package:flutter/material.dart';

class QuickLinks extends StatelessWidget {
  final _links = [
    {"icon": Icons.assignment_ind_outlined, "text": "Travel Advisory"},
    {"icon": Icons.more_time_outlined, "text": "Refund Status"},
    {"icon": Icons.flight_takeoff, "text": "Web Check-in"},
    {"icon": Icons.train_outlined, "text": "Check PNR"}
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _links.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return QuickLink(_links[index]["icon"], _links[index]["text"]);
        });
  }
}

class QuickLink extends StatelessWidget {
  final IconData icon;
  final String text;
  QuickLink(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(0, 56, 140, 1.0)),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: 150,
      child: Row(
        children: [
          Icon(icon, color: Colors.black,),
          SizedBox(
            width: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
