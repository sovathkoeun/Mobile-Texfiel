import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  bool _isCheck = false;
  String _Username = "";
  String _Password = "";
  String _info = "";
  void getCheck(bool value) {
    setState(() {
      _isCheck = value;
    });
  }

  void getUser(String text) {
    setState(() {
      _Username = text;
    });
  }

  void getPass(String text) {
    setState(() {
      _Password = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Username',
                  ),
                  onChanged: (String text) {
                    getUser(text);
                  }),
            ),
            Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    hintText: 'Password',
                  ),
                  onChanged: (String text) {
                    getPass(text);
                  },
                  autofocus: false,
                  obscureText: true,
                )),
            Container(
              padding: EdgeInsets.only(left: 60.0),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: _isCheck,
                    onChanged: (bool value) {
                      getCheck(value);
                    },
                  ),
                  Text("Are you agree ?"),
                ],
              ),
            ),
            Container(
              width: 260.0,
              height: 40.0,
              child: RaisedButton(
                onPressed: () {
                  getInfo();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
