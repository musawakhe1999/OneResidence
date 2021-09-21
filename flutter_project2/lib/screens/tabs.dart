import 'package:flutter/material.dart';

import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/founditems.dart';
import 'package:flutter_project2/screens/LostItems.dart';
import 'package:flutter_project2/screens/maintenance.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Report(), Found(), Lost(), RtoMentaince()];

  void _onPageChanged(int index) {}
  void _itemTapped(int selectedIndex) {
    print(selectedIndex);
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          children: _screens,
          onPageChanged: _onPageChanged,
          physics: NeverScrollableScrollPhysics(),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: _itemTapped,
            backgroundColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Damage'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text('FoundItems'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('LostItems'),
                  backgroundColor: Colors.blue),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text('Maintenance'),
                  backgroundColor: Colors.blue),
            ]));
  }
}
