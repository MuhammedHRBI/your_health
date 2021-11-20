// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:your_health/widgets/bottombar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Image.asset(
                  'images/unknown.png',
                  height: 175,
                  width: 320,
                  fit: BoxFit.fill,
                )),
          ),
          //),
          //),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 8, 8, 8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/unknown.png',
                      height: 125,
                      width: 150,
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/unknown.png',
                      height: 125,
                      width: 150,
                      fit: BoxFit.fill,
                    )),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 8, 8, 8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/unknown.png',
                      height: 125,
                      width: 150,
                      fit: BoxFit.fill,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Image.asset(
                      'images/unknown.png',
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
