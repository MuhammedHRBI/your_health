import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _email ="";
  String _password ="";
  String _name = "";
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Name'
              ),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
              onChanged: (value) {
                setState(() {
                  _email = value.trim();
                });
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password'
              ),
              onChanged: (value) {
                setState(() {
                  _password = value.trim();
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: Text("Sign in"),
                onPressed: () {
                  auth.signInWithEmailAndPassword(email: _email, password: _password);
                }
                ),
              MaterialButton(
                color: Colors.blue,
                child: Text("Sign up"),
                onPressed: () {
                  auth.createUserWithEmailAndPassword(email: _email, password: _password);
                }
                )
            ],
          )
        ],
      ),
    );
  }
}

// final auth = FirebaseAuth.instance;
// onPressed() {
//   auth.signOut();
// }
