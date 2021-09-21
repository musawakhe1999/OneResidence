import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_project2/screens/tabsAdmin.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String password = '';
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"), centerTitle: true),
      body: Column(children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: "",
            border: UnderlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 160,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'musawakhesyabonga@gmail.com',
            prefixIcon: Icon(Icons.mail),
            labelText: "USERNAME",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.blue, width: 3)),
          ),
          controller: emailController,
        ),
        SizedBox(
          height: 40,
        ),
        TextField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: '12345',
            labelText: "PASSWORD",
            errorText: 'Password is wrong',
            suffixIcon: IconButton(
              icon: isPasswordVisible
                  ? Icon(Icons.visibility_off)
                  : Icon(Icons.visibility),
              onPressed: () =>
                  setState(() => isPasswordVisible = !isPasswordVisible),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.blue, width: 2)),
          ),
          obscureText: isPasswordVisible,
          controller: passwordController,
        ),
        RaisedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TabsAdmin()));
          },
          color: Colors.blue,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Text(
            "Login as student",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
