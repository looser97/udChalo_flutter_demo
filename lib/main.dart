import 'package:flutter/material.dart';
import './screens/hotel_details.dart';
import './screens/home.dart';
import 'screens/search.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './models/search.dart';
import './screens/search_result.dart';
import './screens/review.dart';
import './screens/passenger-details.dart';
import './screens/payment.dart';
import './screens/booking-confirm.dart';
import './screens/wallet_transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (_) => Search(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'udChalo Demo App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Color.fromRGBO(0, 56, 140, 1.0),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(),
        routes: {
          SearchScreen.routeName: (ctx) => SearchScreen(),
          SearchResult.routeName: (ctx) => SearchResult(),
          ReviewScreen.routeName: (ctx) => ReviewScreen(),
          PassengerDetailsScreen.routeName: (ctx) => PassengerDetailsScreen(),
          PaymentScreen.routeName: (ctx) => PaymentScreen(),
          BookingConfirmScreen.routeName: (ctx) => BookingConfirmScreen(),
          HotelDetailsScreen.routeName: (ctx) => HotelDetailsScreen(),
          WalletTransactionsScreen.routeName: (ctx) => WalletTransactionsScreen()
        },
      ),
    );
  }
}
