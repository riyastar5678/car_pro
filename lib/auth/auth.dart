import 'package:car_pro/pages/login.dart';
import 'package:car_pro/pages/sign_in.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AuthPage> {
  bool a= true;
  void go()
  {
    setState(() {
      a = !a;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(a){
      return Login(show: go);
    }
    else
    {
      return SignIn(show: go);
    }
  }
}