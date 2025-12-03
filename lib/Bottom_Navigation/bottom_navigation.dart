import 'package:flutter/material.dart';
import 'package:travlix/Home/home_page.dart';

import '../Home/Home_Acc/home_accountpage.dart';
import '../Home/Home_Acc/preferences_page.dart';
import '../Home/Home_Acc/support_page.dart';
import '../Home/Home_Review/review_page.dart';
import '../Home/search_page.dart';
import '../Home/trips_page.dart';

class PG2 extends StatefulWidget {
  const PG2({Key? key}) : super(key: key);

  @override
  State<PG2> createState() => _PG2State();
}

class _PG2State extends State<PG2> {
  int _a = 0;

  final List<Widget> pages = [
    homepage(),
    // Hometrip(),
    searchpage(getValue: {}),
    tripspage(),
    reviewpage(),
    homeaccountpage(),
    supportpage(),
    preferencespage()
    // Trips(),
    // Review(),
    // AccountPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _a = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_a],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        currentIndex: _a,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: "Review",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
