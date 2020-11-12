import 'package:flutter/material.dart';
import 'package:technical_test/FirstScreen.dart';
import 'package:technical_test/SecondScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    FirstScreen(),
    SecondScreen(),
    SecondScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme:
          IconThemeData(color: Colors.yellow, size: 28.0),
          selectedItemColor: Colors.yellow,
          selectedFontSize: 10.0,
          unselectedFontSize: 10.0,
          unselectedIconTheme: IconThemeData(color: Colors.grey,size: 28.0),
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu), title: Text('Menu')),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervisor_account), title: Text('Account')),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text('Cart')),
          ]),

    );
  }
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

}
