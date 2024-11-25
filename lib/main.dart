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
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (c, i) {
            print(i);
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(i.toString() + " 홍길동"),
            );
          },
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

