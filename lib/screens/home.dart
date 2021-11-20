// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:your_health/widgets/bottombar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, shadowColor: Colors.transparent, elevation: 0, ),
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'images/services.png',
                    height: 175,
                    width: 320,
                    fit: BoxFit.fill,
                  )),
            ],
          ),
          //),
          //),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'images/dates.png',
                    height: 125,
                    width: 150,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/appointment.png',
                      height: 125,
                      width: 150,
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: Image.asset(
                    'images/faculty.png',
                    width: 190,
                    height: 165,
                    fit: BoxFit.cover,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/contact.png',
                      height: 125,
                      width: 150,
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          // Container(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Container(
          //       child: BottomBar(),
          //     ),
          //   ),
          // ),
        ]),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
