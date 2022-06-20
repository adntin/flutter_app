import 'package:flutter/material.dart';

class LdsPageBottomNavigationBar extends StatefulWidget {
  final String title;
  const LdsPageBottomNavigationBar({Key? key, required this.title})
      : super(key: key);

  @override
  State<LdsPageBottomNavigationBar> createState() =>
      _LdsPageBottomNavigationBar();
}

class _LdsPageBottomNavigationBar extends State<LdsPageBottomNavigationBar> {
  int _selectedIndex = 0;

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
      icon: Icon(Icons.call),
      label: 'Calls',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.camera),
      label: 'Camera',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.chat),
      label: 'Chats',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: _pages.elementAt(_selectedIndex), //New
      // ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white10,
        elevation: 100,
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
      ),
    );
  }
}
