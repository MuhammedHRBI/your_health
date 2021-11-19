import 'package:flutter/material.dart';
import 'package:your_health/screens/auth_wrapper.dart';
import 'package:your_health/screens/loading_screen.dart';
import 'package:your_health/screens/sign_in.dart';
import 'screens/home.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => const LoadingScreen(),
      '/home': (context) => const Home(),
      '/auth_wrapper' : (context) => const AuthWrapper(),
      '/sign_in' : (context) => const SignIn(),
    },
  ));