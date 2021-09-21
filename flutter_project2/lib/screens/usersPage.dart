import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/reportLost.dart';
import 'package:flutter_project2/screens/userInDetails.dart';
import 'package:flutter_project2/screens/addUser.dart';

class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("USERS OF SYSTEM"), centerTitle: true),
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => UserDetails(value: "sya")));
                },
                title: Text("Musawakhe Mbatha"),
                subtitle: Text("Student No 21818790"),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddUser()));
            },
            backgroundColor: Colors.lightBlue));
  }
}
