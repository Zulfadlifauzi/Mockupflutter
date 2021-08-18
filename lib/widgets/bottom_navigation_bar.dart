import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:mockupmymosq/constants/constant.dart';
import 'package:mockupmymosq/screens/benefits_screens.dart';
import 'package:mockupmymosq/screens/booking_screens.dart';
import 'package:mockupmymosq/screens/home_screens.dart';
import 'package:mockupmymosq/screens/search_screens.dart';

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({Key? key}) : super(key: key);

  @override
  _BottomTabNavigatorState createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomeScreen(),
    SearchScreen(),
    BenefitScreen(),
    BookingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: kPrimaryColor),
        selectedItemColor: Color(0xFFFF7F50),
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.ticket_outline), label: 'Benefits'),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.calendarOutline), label: 'Bookings'),
        ],
      ),
    );
  }
}
