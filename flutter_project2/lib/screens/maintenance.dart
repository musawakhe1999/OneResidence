import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/reportLost.dart';
import 'package:flutter_project2/screens/InDetails.dart';

class RtoMentaince extends StatefulWidget {
  @override
  _RtoMentainceState createState() => _RtoMentainceState();
}

class _RtoMentainceState extends State<RtoMentaince> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Damage Report"), centerTitle: true),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Details(value: "sya")));
              },
              title: Text("21818790 Room No"),
              subtitle: Text('The door is not working properly'),
            ),
          );
        },
      ),
    );
  }
}
