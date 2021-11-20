// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Appointments'),
      leading: const Icon(Icons.search),
    );
  }
}
