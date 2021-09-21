import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  @override
  _ReportState createState() => _ReportState();
}

class _ReportState extends State<Report> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Report Found"), centerTitle: true),
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
