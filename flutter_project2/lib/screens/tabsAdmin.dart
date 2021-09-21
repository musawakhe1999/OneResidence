import 'package:flutter/material.dart';

import 'package:flutter_project2/screens/postFromUsers.dart';
import 'package:flutter_project2/screens/usersPage.dart';
import 'package:flutter_project2/screens/adminDamages.dart';

class TabsAdmin extends StatefulWidget {
  @override
  _TabsAdminState createState() => _TabsAdminState();
}

class _TabsAdminState extends State<TabsAdmin> {
  PageController _pageController = PageController();
  List<Widget> _screens = [Users(), PostFromUser(), Damages()];

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
                  backgroundColor: Colors.blue,
                  title: Text('users')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  backgroundColor: Colors.blue,
                  title: Text('items')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.blue,
                  title: Text('damages')),
            ]));
  }
}
