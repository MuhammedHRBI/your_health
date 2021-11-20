import 'package:flutter/material.dart';
import 'package:your_health/screens/appointments.dart';
import 'package:your_health/screens/contact_us.dart';
import 'package:your_health/screens/faculty.dart';
import 'package:your_health/screens/loading_screen.dart';
import 'package:your_health/screens/login.dart';
import 'package:your_health/screens/settings.dart';
import 'screens/home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MaterialApp(
    routes: {
      '/': (context) => const LoadingScreen(),
      '/home': (context) => const Home(),
      '/login': (context) => const LoginScreen(),
      '/appointment': (context) => const Appointment(),
      '/faculty': (context) => const Faculty(),
      '/settings': (context) => const Settingss(),
      '/contactUs': (context) => const ContactUs(),
    },
  ));
}