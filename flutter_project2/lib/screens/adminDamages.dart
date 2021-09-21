import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/reportLost.dart';
import 'package:flutter_project2/screens/reportLost.dart';
import 'package:flutter_project2/screens/damagesAdminIndetails.dart';

class Damages extends StatefulWidget {
  @override
  _DamagesState createState() => _DamagesState();
}

class _DamagesState extends State<Damages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Students Damages"), centerTitle: true),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DamagesDetails(value: "sya")));
                },
                title: Text("Musawakhe Mbatha"),
                subtitle: Text("Door is not working properly"),
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
