import 'package:flutter/material.dart';
import 'package:your_health/screens/loading_screen.dart';
import 'screens/home.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => LoadingScreen(),
      '/home': (context) => const Home(),
    },
  ));