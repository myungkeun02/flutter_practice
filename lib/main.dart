import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  var phoneNumbers = ["01012341234", '01050023568', '01033333333'];
  var likes = [0,0,0];

  addOne() {
    setState(() {
      total++;
    });
  }

  addContact(name, phoneNumber) {
    setState(() {
      names.add(name);
      phoneNumbers.add(phoneNumber);
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
            subtitle: Text(phoneNumbers[i]),
            trailing: ElevatedButton(
              onPressed: (){
                setState(() { // 상태 변경 알림
                  names.removeAt(i);
                  phoneNumbers.removeAt(i);// 인덱스를 기반으로 삭제
                });
              },
              child: Text('삭제'),
            ),
          );
          },
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(onPressed: (){
          setState(() {
            names.sort();
          });
        }, child: Text("정렬")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context){
            return DialogUI(addOne : addOne, addContact: addContact,);
          });
        },
      ),
    );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({super.key, this.addOne, this.addContact});

  final addOne;
  final addContact;
  var name = TextEditingController();
  var phoneNumber = TextEditingController();

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
              controller: name,
            ),
            TextField(
              controller: phoneNumber,
            ),
            TextButton(
                onPressed: (){
                  addOne();
                  if (name.text != '' || phoneNumber.text != '') {
                    addContact(name.text, phoneNumber.text);
                    Navigator.pop(context);
                  }
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
