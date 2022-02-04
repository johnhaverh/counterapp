import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key})
      : super(key: key); //replace Key to Hey? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //alinear vertical
          //crossAxisAlignment: CrossAxisAlignment.center, //alinear horizontal
          children: const [
            Text('Clicks Counter'),
            Text('0'),
          ],
        ),
      ),
    );
  }
}
