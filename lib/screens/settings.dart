// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Settingss extends StatelessWidget {
  const Settingss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
        ),
        backgroundColor: Colors.lightBlue[400],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('images/logo.png', width: 221, height: 144, fit: BoxFit.cover)]),
          ),
          SizedBox(
            height: 200,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Thank You',
                style: TextStyle(fontSize: 24),
              )
            ]),
          ),
          SizedBox(
            height: 75,
            child: GestureDetector(
              onTap: () {
                final auth = FirebaseAuth.instance;
                auth.signOut();
                exit(0);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 350,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                      elevation: 5,
                      shadowColor: Colors.grey[400],
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.logout, color: Colors.red),
                          ),
                          Text('Sign Out')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
