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
          leading: Icon(Icons.stacked_bar_chart_sharp, size: 30,),
          title: Text(
            "앱임",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
          backgroundColor: Colors.tealAccent,
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            margin: EdgeInsets.all(
                20
            ),
            padding: EdgeInsets.fromLTRB(
                0,20,0,20
            ),
            decoration: BoxDecoration(
                color: Colors.tealAccent,
                border: Border.all(
                    color:Colors.black
                ),
                borderRadius: BorderRadius.circular(
                    10
                )
            ),
            child: Center(
                child: ElevatedButton(
                    onPressed: (

                        ) {
                    },
                    child: Text(
                        "버튼",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.w900
                        )
                    ),
                )
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.phone,
                color: Colors.blueAccent,
                size: 60,
              ),
              Icon(
                Icons.message,
                color: Colors.blueAccent,
                size: 60,
              ),
              Icon(
                Icons.contact_page,
                color: Colors.blueAccent,
                size: 60,
              )
            ],
          ),
        ),
      )
    );
  }
}