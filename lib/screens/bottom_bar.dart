import 'package:booktickets/screens/app/home_screen.dart';
import 'package:booktickets/screens/app/profile_screen.dart';
import 'package:booktickets/screens/app/search_screen.dart';
import 'package:booktickets/screens/app/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //menu index selected
  int _selectedIndex = 0;

  //List of the menu screens
  List _screens = [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen()
  ];

  //Function to update menu index
  void _updateMenuIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _updateMenuIndex,
        selectedItemColor: Color(0xffAA78E9),
        items: [
          bottomNavBar(
              icon: FluentSystemIcons.ic_fluent_home_regular,
              lable: 'Home',
              iconAction: FluentSystemIcons.ic_fluent_home_filled),
          bottomNavBar(
              icon: FluentSystemIcons.ic_fluent_search_regular,
              lable: 'Search',
              iconAction: FluentSystemIcons.ic_fluent_search_filled),
          bottomNavBar(
              icon: FluentSystemIcons.ic_fluent_ticket_regular,
              lable: 'Ticket',
              iconAction: FluentSystemIcons.ic_fluent_ticket_filled),
          bottomNavBar(
              icon: FluentSystemIcons.ic_fluent_person_regular,
              lable: 'Profile',
              iconAction: FluentSystemIcons.ic_fluent_person_filled),
        ],
      ),
    );
  }

  bottomNavBar(
      {required IconData icon,
      required String lable,
      required IconData iconAction}) {
    return BottomNavigationBarItem(
        icon: Icon(icon), label: lable, activeIcon: Icon(iconAction));
  }
}
