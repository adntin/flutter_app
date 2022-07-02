import 'package:flutter/material.dart';

class TripTabBar extends StatefulWidget {
  const TripTabBar({Key? key}) : super(key: key);

  @override
  State<TripTabBar> createState() => _TripTabBarState();
}

class _TripTabBarState extends State<TripTabBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      // backgroundColor: Colors.red,
      // elevation: 100,
      iconSize: 32,
      unselectedFontSize: 16,
      selectedFontSize: 20,
      unselectedItemColor: Colors.blue,
      selectedItemColor: Colors.green,
      unselectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.normal), // color 无效
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.bold), // color 无效
      unselectedIconTheme: const IconThemeData(color: Colors.orange),
      selectedIconTheme: const IconThemeData(color: Colors.red, size: 42),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
    );
  }

  static const List<Widget> _pages = <Widget>[
    Icon(
      Icons.call,
      size: 150,
    ),
    Icon(
      Icons.camera,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
  ];

  static const List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.camera),
      label: '搜索',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: '旅拍',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: '我的',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
