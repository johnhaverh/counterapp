import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key key}) : super(key: key); 
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  int counter=0;
  
  @override
  Widget build(BuildContext context) {
    
    const fonsSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterPage "),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks Counter',style: fonsSize30,),
            Text('$counter',style: fonsSize30,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;        
          setState(() {});
        },
      ),
    );
  }
}