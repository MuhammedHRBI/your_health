import 'package:your_health/screens/appointments.dart';
import 'package:your_health/screens/book.dart';
import 'package:your_health/screens/contact_us.dart';
import 'package:your_health/screens/faculty.dart';
import 'package:your_health/screens/loading_screen.dart';
import 'package:your_health/screens/login.dart';
import 'package:your_health/screens/signup.dart';
import 'screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:your_health/screens/settings.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const LoadingScreen(),
      '/home': (context) => const Home(),
      '/login': (context) => const LoginScreen(),
      '/appointment': (context) => const Appointment(),
      '/contactUs': (context) => const ContactUs(),
      '/settings': (context) => const Settingss(),
      '/faculty': (context) => const Faculty(),
      '/signup': (context) => const SignUpScreen(),
      '/book': (context) => const Book()
    },
  ));
}
