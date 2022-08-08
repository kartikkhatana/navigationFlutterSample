import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:navigation/home.dart';
import 'package:navigation/mydata.dart';

class LoginPage extends StatefulWidget {
  String name = "";

  LoginPage(this.name);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "THIS IS LOGIN PAGE",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(" THIS IS THE NAME \n ${MyData.myname}" ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("MOVE TO PREVIOUS PAGE"),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
