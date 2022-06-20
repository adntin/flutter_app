import 'package:flutter/material.dart';

class BaseState<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

  void onRoute(StatefulWidget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }
}
