import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:travelbuddy/screens/home_screen.dart';
import 'package:travelbuddy/screens/search_screen.dart';
import 'package:travelbuddy/screens/ticket_screen.dart';
import 'package:travelbuddy/utilis/utilis.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List <Widget>_widgetOptions= <Widget>[
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    const Text("Profile"),
  ];

  void _onItemtapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Styles.bgColor,
        currentIndex: _selectedIndex,
        onTap: _onItemtapped,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black45,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled) ,
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Ticket"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ) ,
    );
  }
}
