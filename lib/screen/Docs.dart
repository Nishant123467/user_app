import 'package:flutter/material.dart';
import 'package:user_app/screen/bottombar.dart';

import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/setting.dart';


class Docspage extends StatefulWidget {
  const Docspage({super.key});

  @override
  State<Docspage> createState() => _DocspageState();
}

class _DocspageState extends State<Docspage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => homepage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECF0F5).withOpacity(1.0),
      appBar: AppBar(
        title: Text("Docs Page"),
      ),
      body: Center(
        child: Text(
          "Docs Page Content",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _onItemTapped(index);
        },
      ),
    );
  }
}
