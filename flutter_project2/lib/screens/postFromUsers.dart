import 'package:flutter/material.dart';
import 'package:flutter_project2/screens/reportFound.dart';
import 'package:flutter_project2/screens/reportLost.dart';
import 'package:flutter_project2/screens/postInDetails.dart';

class PostFromUser extends StatefulWidget {
  @override
  _PostFromUserState createState() => _PostFromUserState();
}

class _PostFromUserState extends State<PostFromUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("POST OF USERS"), centerTitle: true),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PostDetails(value: "sya")));
              },
              title: Text("Chager of Laptop"),
              subtitle: Text("Posted by Musawakhe"),
            ),
          );
        },
      ),
    );
  }
}
