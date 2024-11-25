import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            a++;
            print(a);
          },
          child: Text(a.toString()),
          backgroundColor: Colors.teal,
        ),
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

