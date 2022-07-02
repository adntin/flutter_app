import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LdsTabBar extends StatefulWidget {
  const LdsTabBar({Key? key}) : super(key: key);

  @override
  State<LdsTabBar> createState() => _LdsTabBarState();
}

class _LdsTabBarState extends State<LdsTabBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomNavItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      // backgroundColor: Colors.red,
      // elevation: 100,
      // iconSize: 32,
      // unselectedFontSize: 16,
      // selectedFontSize: 20,
      // unselectedItemColor: Colors.blue,
      // selectedItemColor: Colors.green,
      // unselectedLabelStyle:
      //     const TextStyle(fontWeight: FontWeight.normal), // color 无效
      // selectedLabelStyle:
      //     const TextStyle(fontWeight: FontWeight.bold), // color 无效
      // unselectedIconTheme: const IconThemeData(color: Colors.orange),
      // selectedIconTheme: const IconThemeData(color: Colors.red, size: 42),
      // showSelectedLabels: true,
      // showUnselectedLabels: true,
      // type: BottomNavigationBarType.fixed,
    );
  }

  static List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
        icon: Lottie.asset('assets/lottie/device.json',
            width: 40, height: 40, repeat: true),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Lottie.asset('assets/lottie/automation.json',
            width: 40, height: 40, repeat: true),
        label: 'Automation'),
    BottomNavigationBarItem(
        icon: Lottie.asset('assets/lottie/shop.json',
            width: 40, height: 40, repeat: true),
        label: 'Shop'),
    BottomNavigationBarItem(
        icon: Lottie.asset('assets/lottie/community.json',
            width: 40, height: 40, repeat: true),
        label: 'Community'),
    BottomNavigationBarItem(
        icon: Lottie.asset('assets/lottie/me.json',
            width: 40, height: 40, repeat: true),
        label: 'Me'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
