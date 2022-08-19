import 'package:flutter/material.dart';
import 'package:new_project/pages/Add_page.dart';
import 'package:new_project/pages/Chat_pages.dart';
import 'package:new_project/pages/Home_page.dart';
import 'package:new_project/pages/Settings_page.dart';
import 'package:new_project/pages/Shopping_page.dart';

class BottonControllar extends StatefulWidget {
  @override
  State<BottonControllar> createState() => _BottonControllarState();
}

class _BottonControllarState extends State<BottonControllar> {
  int _currentIndex = 0;

 final _pages = [
  HomePage(),
  ShoppingPage(),
  Add_Page(),
  ChatPage(),
  SettingsPage(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.white,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Color.fromARGB(255, 96, 33, 243),
      selectedFontSize: 16,
      onTap: (int value) {
        setState(() {
          _currentIndex = value;
        });

      },
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          icon: Icon(
            Icons.home_outlined,
            ),
            label: "Home",
            
        ),
        BottomNavigationBarItem(
           backgroundColor: Colors.white,
          icon: Icon(
            Icons.shopping_basket_outlined
            ),
            label: "Shop",
        ),
        BottomNavigationBarItem(
           backgroundColor: Colors.white,
          icon: Icon(
            Icons.add_outlined,
            ),
            label: "Add",
        ),
        BottomNavigationBarItem(
           backgroundColor: Colors.white,
          icon: Icon(
            Icons.chat_outlined,
            ),
            label: "Chat",
        ),
        BottomNavigationBarItem(
           backgroundColor: Colors.white,
          icon: Icon(
            Icons.settings_outlined,
            ),
            label: "Settings",
        )
      ],
      ),
      body: _pages[_currentIndex],
    );
  }
}