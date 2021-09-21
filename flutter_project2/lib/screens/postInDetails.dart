import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project2/screens/founditems.dart';

class PostDetails extends StatefulWidget {
  late String value;
  PostDetails({required this.value});
  @override
  _PostDetailsState createState() => _PostDetailsState(value);
}

class _PostDetailsState extends State<PostDetails> {
  late String value;
  _PostDetailsState(this.value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post in Details"), centerTitle: true),
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
