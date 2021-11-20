import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({ Key? key }) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                child: Text("Back"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                }
                ),
              MaterialButton(
                color: Colors.blue,
                child: Text("Sign up"),
                onPressed: () async {
                  await auth.createUserWithEmailAndPassword(email: _email, password: _password);
                  Navigator.pushReplacementNamed(context, '/home');
                }
                )
            ],
          )
        ],
      ),
    );
  }
}
