import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Flexible(child: Container(color: Colors.redAccent,), flex: 1,),
            Flexible(child: Container(color: Colors.orangeAccent,), flex: 1,),
            Flexible(child: Container(color: Colors.yellowAccent,), flex: 1,),
            Flexible(child: Container(color: Colors.greenAccent,), flex: 1,),
            Flexible(child: Container(color: Colors.blueAccent,), flex: 1,),
            Flexible(child: Container(color: Colors.purpleAccent,), flex: 1,),
          ],
        ),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}