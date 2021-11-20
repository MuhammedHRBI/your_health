import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({ Key? key }) : super(key: key);
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Future <void> switchToHome() async {
    await Future.delayed(const Duration(seconds: 3));
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            width: 221,
            height: 144,
            fit: BoxFit.cover
          ),
          const SizedBox(
            height: 300,
          ),
          Center(
            child: SpinKitFoldingCube(
              color: Colors.blue[300],
              size: 80.0,
            ),
          ),
        ],
      ),
    );
  }
}