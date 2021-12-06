import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your userid',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
          RaisedButton(
            child: Text('Login'),
            onPressed: () {},
          ),
        ]),
      ),
    );
  }
}
