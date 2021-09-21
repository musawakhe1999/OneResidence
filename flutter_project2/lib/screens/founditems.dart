import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';

class Found extends StatefulWidget {
  @override
  _FoundState createState() => _FoundState();
}

class _FoundState extends State<Found> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Found Items"),
        ),
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
                  .push(MaterialPageRoute(builder: (context) => Report()));
            },
            backgroundColor: Colors.lightBlue));
  }
}
