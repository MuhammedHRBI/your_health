import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Future <void> switchToHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, '/home');
  }

    @override
  void initState() {
    super.initState();
    switchToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.blue[100],
          size: 69.0,
        ),
      ),
    );
  }
}