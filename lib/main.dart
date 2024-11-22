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
        appBar: AppBar( title: Text("앱임"), backgroundColor: Colors.tealAccent,),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(0,20,0,20),
            decoration: BoxDecoration(
                color: Colors.tealAccent,
                border: Border.all(color:Colors.black),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("dddd")),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),
        ),
      )
    );
  }
}