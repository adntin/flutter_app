import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/automation_page.dart';
import 'pages/shop_page.dart';
import 'pages/community_page.dart';
import 'pages/me_page.dart';

import 'components/my_stateless_widget.dart';
import 'components/my_stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // https://api.flutter.dev/flutter/material/MaterialApp/title.html
      title: 'AiDot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AiDot'),
      ),
      body: Column(children: [
        const MyStatelessWidget(),
        const MyStatefulWidget(),
        TextButton(
            onPressed: () => onPressed(const HomePage()),
            child: const Text('Home')),
        TextButton(
            onPressed: () => onPressed(const AutomationPage()),
            child: const Text('Automation')),
        TextButton(
            onPressed: () => onPressed(const ShopPage()),
            child: const Text('Shop')),
        TextButton(
            onPressed: () => onPressed(const CommunityPage()),
            child: const Text('Community')),
        TextButton(
            onPressed: () => onPressed(const MePage()),
            child: const Text('Me')),
      ]),
    );
  }

  onPressed(page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
