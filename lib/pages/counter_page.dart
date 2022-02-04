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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () {
              counter--;        
              setState(() {});
            },
          ),
          //const SizedBox(width: 20),
          FloatingActionButton(
            child: const Icon(Icons.auto_delete), 
            onPressed: () {
              counter=0;        
              setState(() {});
            },
          ),
          //const SizedBox(width:20),
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () {
              counter++;        
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
