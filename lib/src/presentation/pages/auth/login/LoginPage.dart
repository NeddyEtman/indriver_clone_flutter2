import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/LoginContent.dart'
    show LoginContent;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // HOT RELOAD - CRTL + S
  // HOT RESTART - SHIFT + F5
  // FULL RESTART - STOP + RUN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 24, 181, 254),
      body: LoginContent(),
    ); //Scaffold
  }
}
