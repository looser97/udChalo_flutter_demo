import 'package:flutter/material.dart';
import '../widgets/menu.dart';
import '../widgets/latest_search_cities.dart';
import '../widgets/quick-link.dart';
import '../widgets/whats_new.dart';
import '../widgets/app_drawer.dart';
import '../widgets/info_courosel.dart';
import '../screens/wallet_transactions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      Navigator.of(context).pushNamed(
        WalletTransactionsScreen.routeName,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 56, 140, 1.0),
        elevation: 0,
        title: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Image.network(
              "https://static.udchalo.com/client_assets/img/logo/logo_white.png",
              height: 36,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Container(
          width: deviceSize.width,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 120,
                    color: Color.fromRGBO(0, 56, 140, 1.0),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child: Text(
                        "Jai Hind Deeptanshu ",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  MenuGrid(),
                ],
              ),
              Container(
                color: Colors.white,
                height: 20,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Quick Links",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 40,
                child: QuickLinks(),
              ),
              Container(
                color: Colors.white,
                height: 20,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Continue where you left",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(top: 15),
                height: 100,
                child: WhatsNew(),
              ),
              Container(
                color: Colors.white,
                height: 20,
                margin: EdgeInsets.only(top: 25),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Offers for You",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "View All",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    Icon(
                      Icons.double_arrow_outlined,
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                      size: 14,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 180,
                child: MarketingCarousel(),
              ),
              Container(
                color: Colors.white,
                height: 20,
                margin: EdgeInsets.only(top: 25),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Trip Ideas",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Build my Custom trip",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                    Icon(
                      Icons.double_arrow_outlined,
                      color: Color.fromRGBO(0, 56, 140, 1.0),
                      size: 14,
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 180,
                child: LatestSearchCities(),
              ),
              /*Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 270,
                child: MarketingCarousel(),
              ),
              Container(
                color: Colors.white,
                height: 30,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      "Popular Destinations",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 56, 140, 1.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10),
                height: 230,
                child: LatestSearchCities(),
              ), */
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'My Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_giftcard),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(0, 56, 140, 1.0),
        onTap: _onItemTapped,
      ),
    );
  }
}
