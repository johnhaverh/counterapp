import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key})
      : super(key: key); //replace Key to Hey? for using with NullSafety

  @override
  Widget build(BuildContext context) {
    
    const fonsSize30 = TextStyle(fontSize: 30);

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
            Text('Clicks Counter',style: fonsSize30,),
            Text('0',style: fonsSize30,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          print("Test Button");          
        },
      ),
    );
  }
}
