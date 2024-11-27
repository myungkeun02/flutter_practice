import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
          home: MyApp()
      )
  );
}


class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var total = 3;
  var names = ["김영숙", "최명근", "피자집"];
  var likes = [0,0,0];

  addOne() {
    setState(() {
      total++;
    });
  }

  addName(name) {
    setState(() {
      names.add(name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(total.toString()),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(names[i]),
          );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context){
            return DialogUI(addOne : addOne, addName: addName,);
          });
        },
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.addOne, this.addName});

  final addOne;
  final addName;
  var inputData = '';


  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              onChanged: (text) {
                  inputData = text;
              },
            ),
            TextButton(
                onPressed: (){
                  addOne();
                  addName(inputData);
                  Navigator.pop(context);
                },
                child: Text("완료")
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("취소")
            )
          ],
        ),
      ),
    );
  }
}
