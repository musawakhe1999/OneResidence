import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/reportLost.dart';

class Lost extends StatefulWidget {
  @override
  _LostState createState() => _LostState();
}

class _LostState extends State<Lost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Report Lost Items"), centerTitle: true),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {},
                title: Text("South Africa"),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ReportLost()));
            },
            backgroundColor: Colors.lightBlue));
  }
}
