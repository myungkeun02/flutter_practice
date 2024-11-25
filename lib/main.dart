import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// class Test extends StatefulWidget {
//   const Test({super.key});
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ["김영숙", "최명근", "피자집"];
  var likes = [0,0,0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              a++;
            });
          },
          child: Text(a.toString()),
          backgroundColor: Colors.teal,
        ),
        appBar: AppBar(
          title: Text("contact"),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (c, i) {
            print(i);
            return ListTile(
              leading: Text(likes[i].toString()),
              title: Text(name[i]),
              trailing: TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.tealAccent)),
                  onPressed: (){
                    setState(() {
                      likes[i]++;
                    });
                  },
                  child: Text("좋아요")),
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

