import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter2/src/presentation/widgets/DefaultTextField.dart';
import 'package:indriver_clone_flutter2/src/presentation/widgets/Defaultbutton.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 12, 38, 145),
                Color.fromARGB(255, 34, 156, 249),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // HORIZONTAL
            mainAxisAlignment: MainAxisAlignment.center, // VERTICAL
            children: [
              _textLoginRotated(),
              SizedBox(height: 100),
              _textRegisterRotated(context),
              SizedBox(height: 90),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.95,
          // width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(left: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 14, 29, 166),
                Color.fromARGB(255, 30, 112, 227),
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                _textWelcome('Welcome'),
                _textWelcome('back...'),
                _imageCar(),
                _textLogin(),
                DefaultTextfield(text: "Email", icon: Icons.email_outlined),
                DefaultTextfield(
                  text: "Password",
                  icon: Icons.lock_outline,
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                ),
                Spacer(),
                Defaultbutton(text: 'LOGIN'),
                _separatorOr(),
                SizedBox(height: 10),
                _textDontHaveAccount(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _textLogin() {
    return Text(
      'Log in',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _imageCar() {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset("assets/img/car.png", width: 150, height: 150),
    );
  }

  Widget _textDontHaveAccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: TextStyle(color: Colors.grey[100], fontSize: 16),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'register');
          },
          child: Text(
            'Register',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget _separatorOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: 25,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(' O ', style: TextStyle(color: Colors.white, fontSize: 17)),
        Container(
          height: 1,
          width: 25,
          color: Colors.white,
          margin: EdgeInsets.only(left: 5),
        ),
      ],
    );
  }

  Widget _textRegisterRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'register');
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Register',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }

  Widget _textWelcome(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _textLoginRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Login',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
