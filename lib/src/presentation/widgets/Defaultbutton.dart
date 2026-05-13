import 'package:flutter/material.dart';

class Defaultbutton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const Defaultbutton({
    super.key,
    required this.text,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: MediaQuery.of(context).size.width,
      //alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: color),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
