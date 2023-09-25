import 'package:doctor/screens/home_screen.dart';
import 'package:doctor/screens/message_screen.dart';
import 'package:doctor/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBarRoots extends StatefulWidget{
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex =0;
  final _screens =[
    // Home Screen
    HomeScreen(),
    // Messages Screen
    MessageScreen(),
    //Schedule Screen
    Container(),
    //Setting Screen
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.lightBlueAccent,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
        ),
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "home"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings"),
          ],
        ),
      ),
    );
  }
}