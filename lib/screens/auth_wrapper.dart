import 'package:flutter/material.dart';
import 'package:your_health/authenticate/authenticate.dart';
import 'package:your_health/screens/home.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return either Home widget or Authenticate widget.
    return Home();
  }
}