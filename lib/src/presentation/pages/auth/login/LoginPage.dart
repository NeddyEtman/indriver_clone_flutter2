import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/LoginContent.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginState.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // HOT RELOAD - CRTL + S
  // HOT RESTART - SHIFT + F5
  // FULL RESTART - STOP + RUN
  LoginBloc? _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<LoginBloc>(context);

    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 24, 181, 254),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return LoginContent(_bloc);
        },
      ),
    ); //Scaffold
  }
}
