import 'package:flutter/material.dart';

class ReportLost extends StatefulWidget {
  @override
  _ReportLostState createState() => _ReportLostState();
}

class _ReportLostState extends State<ReportLost> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report Lost"), centerTitle: true),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Room No",
                border: OutlineInputBorder(),
              ),
              controller: passwordController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Contact details ",
                border: OutlineInputBorder(),
              ),
              controller: passwordController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Description ",
                border: OutlineInputBorder(),
              ),
              controller: passwordController,
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Text(
                "Send Report",
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
    );
  }
}
