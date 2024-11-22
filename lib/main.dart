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
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_rounded,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.density_medium,
                size: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                  Icons.add_alert_rounded,
                  size: 40,
              ),
            ),
          ],
          centerTitle: false,
          title: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 20, 0),
            child: Row(
              children: [
                Text(
                  "금호동3가",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  size: 40,
                )
              ]
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          width: double.infinity,
          height: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('bej.png'),
              Container(
                width: 500,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "알바구합니다 백은준",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      "하남시 미사동.끌올 10분 전",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20
                      ),
                    ),
                    Text(
                      "210,000원",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                            Icons.favorite_border
                        ),
                        Text
                          (
                          "4",
                          style: TextStyle(
                              fontSize: 20
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      )
    );
  }
}