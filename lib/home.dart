import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation/login.dart';
import 'package:navigation/mydata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myname = "Hello my name is kartik khatana";
  var mycontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Text(
                  MyData.myname,
                  style: TextStyle(fontSize: 18.0),
                )),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: mycontroller,
                  decoration: InputDecoration(hintText: "New Name"),
                )),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  print(myname);
                  MyData.myname = mycontroller.text;
                  print(myname);
                });
              },
              child: Text("Update Name"),
              color: Colors.blue,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => LoginPage(mycontroller.text))));
              },
              child: Text("MOVE TO NEXT PAGE"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
