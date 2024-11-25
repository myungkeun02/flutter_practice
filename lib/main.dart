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
  var name = ["김영숙", "최명근", "피자집"];
  var likes = [0,0,0];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context){
              return Dialog(child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 20,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Text("Contact", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500)
                        )
                    ),
                    SizedBox(
                      width: 200,
                      height: 40,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '010-5002-3568',
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text("Cancel")),
                        TextButton(onPressed: (){},
                            child: Text("OK"))
                      ],
                    )
                  ],
                ),
              ));
            });
          },
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
              trailing: ElevatedButton(
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
      );
  }
}