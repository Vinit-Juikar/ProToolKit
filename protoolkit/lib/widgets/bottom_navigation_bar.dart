import 'package:flutter/material.dart';

import '../Screens/homescreen.dart';

class BottomNavigationBarForHomeScreen extends StatefulWidget {
  const BottomNavigationBarForHomeScreen({super.key});

  @override
  State<BottomNavigationBarForHomeScreen> createState() =>
      _BottomNavigationBarForHomeScreenState();
}

class _BottomNavigationBarForHomeScreenState
    extends State<BottomNavigationBarForHomeScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const Text("hello"),
    const Text("hey"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 40, 39, 39),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          // Add your other bottom navigation items here

          BottomNavigationBarItem(
            icon: Icon(Icons.public, color: Colors.white),
            label: 'Global',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(color: Colors.blue),
      ),
    );
  }
}
