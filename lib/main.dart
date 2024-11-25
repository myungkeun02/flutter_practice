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
        appBar: AppBar(
          title: Text("contact"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          children: [
            contact(),
            contact(),
            contact(),
            contact(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          ),
        ),
      ),
    );
  }
}

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Icon(Icons.account_circle, size: 100,),
        Text("홍길동", style: TextStyle(fontSize: 50),)
    ]);
  }
}

