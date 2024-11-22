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

        ),
        body: Container(
          padding: EdgeInsets.all(10),
          height: 150,
          child: Row(
            children: [
              Image.asset("bej.png", width: 150,),
              Expanded(
                  child: Container(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('카메라팝니다', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                        Text('금호동 3가', style: TextStyle(fontSize: 15, color: Colors.grey),),
                        Text('7000원', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite_border),
                            Text("4")
                        ],
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(

        ),
      )
    );
  }
}