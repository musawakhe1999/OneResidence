import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/login.dart';
import 'package:flutter_project2/screens/founditems.dart';
import 'package:flutter_project2/screens/tabs.dart';
import 'package:flutter_project2/screens/tabsAdmin.dart';
import 'package:flutter_project2/screens/login2.dart';
import 'package:flutter_project2/screens/image.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      routes: {
        '/login': (context) => Login(),
        '/Found': (context) => Found(),
      },
    ));

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              onPressed: () {
                print("Print answer");

                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login2()));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Login as student",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              onPressed: () {
                print("Print answer");
                print("Print answer");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Login as Staff",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
              onPressed: () {
                print("Print answer");
                print("Print answer");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => upLoad()));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Upload",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
