import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key key}) : super(key: key); 
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  
  int counter=0;

  void increase(){
    counter++;
    setState(() {});
  }
  void decrease(){
    counter--;
    setState(() {});
  }
  void reset(){
    counter=0;
    setState(() {});
  }
  
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
      floatingActionButton: CustomFloatingActions(increaseFn: increase, decreaseFn: decrease, resetFn: reset,),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key key, @required this.increaseFn, this.decreaseFn, this.resetFn,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          // onPressed: ()  =>  setState(() => counter--),
          onPressed: () => decreaseFn(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.auto_delete), 
        //  onPressed: () =>  setState(() => counter=0),
          onPressed: () => resetFn(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          // onPressed: () =>  setState(() => counter++),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
