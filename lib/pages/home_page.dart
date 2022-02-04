import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key); //replace Key to Hey? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('HomePage'));
  }
}
