import 'package:flutter/material.dart';
import 'package:travel_apps/screen/FlightScreen.dart';
import 'package:travel_apps/screen/HomeScreen.dart';
import 'package:travel_apps/screen/loveScreen.dart';

import 'class.dart';
class NavigationBr extends StatefulWidget {

  @override
  _NavigationBrState createState() => _NavigationBrState();
}

class _NavigationBrState extends State<NavigationBr> {


  int _selectedIndex = 0;


  // List of widgets representing different screens for each tab
  final List<Widget> _screens = [
    HomeScreen(),
    FlightBookingScreen(addLove: (Love  love) {
      print("Love added: ${love.date}");

    },),
    FavoriteScreen(),

  ];



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      backgroundColor: Colors.blue[50],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue.shade300, // Background color of the nav bar
        selectedItemColor: Colors.white, // Color of the selected item
        unselectedItemColor: Colors.grey.shade300, // Color of unselected items
        selectedFontSize: 14, // Font size of the selected item label
        unselectedFontSize: 12, // Font size of unselected item labels
        type: BottomNavigationBarType.fixed, // Fixed or shifting type
        elevation: 10, // Shadow/elevation effect
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flight),
            label: 'Flights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Love',
          ),
        ],
      ),
    );
  }



  }


