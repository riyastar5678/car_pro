

import 'package:car_pro/auth/auth.dart';
import 'package:car_pro/models/useredit.dart';
import 'package:car_pro/pages/login.dart';
import 'package:car_pro/pages/sign_in.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(CarsApp());
}

class CarsApp extends StatelessWidget {
  const CarsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: AuthPage(),
    );
  }
}