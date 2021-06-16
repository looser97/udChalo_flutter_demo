import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              color: Color.fromRGBO(0, 56, 140, 1.0),
              child: Row(
                children: [
                  Container(
                    width: 70.0,
                    height: 70.0,
                    margin: EdgeInsets.only(left: 20, top: 30),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/Images/Profile.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 70),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mr. Vipin Kumar', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
                        Text('vipin.kumar@udchalo.com', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Theme(
              data: theme,
              child: ExpansionTile(
                leading: Icon(Icons.account_circle_rounded),
                title: Text("Profile"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.account_circle_rounded),
                    title: Text('View/Edit Profile'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security_outlined),
                    title: Text('Change Password'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Theme(
              data: theme,
              child: ExpansionTile(
                leading: Icon(Icons.business_center),
                title: Text("Bookings"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.flight_takeoff),
                    title: Text('Flight'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.train),
                    title: Text('Train'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.directions_bus),
                    title: Text('Bus'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.local_taxi),
                    title: Text('Cab'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.hotel),
                    title: Text('Hotel'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            Theme(
              data: theme,
              child: ExpansionTile(
                leading: Icon(Icons.supervisor_account),
                title: Text("My Account"),
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.group),
                    title: Text('Add / Saved Travellers'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.payment),
                    title: Text('Saved Payment Methods'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wallet_travel),
                    title: Text('udChalo Credits'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Account Setting'),
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed('/');
                    },
                  ),
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications_active),
              title: Text('Notifications'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.domain_sharp),
              title: Text('Booking Offices'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Contact Us'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.rate_review),
              title: Text('Rate Us'),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.wallet_giftcard),
              title: Text('Special/Other Links'),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
