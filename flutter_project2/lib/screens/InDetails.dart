import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project2/screens/founditems.dart';

class Details extends StatefulWidget {
  late String value;
  Details({required this.value});
  @override
  _DetailsState createState() => _DetailsState(value);
}

class _DetailsState extends State<Details> {
  late String value;
  _DetailsState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Report in Details"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Found()));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                value,
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Room No",
                border: OutlineInputBorder(),
              ),
            ),
          ]),
    );
  }
}
