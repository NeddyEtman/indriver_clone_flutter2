import 'package:flutter/material.dart';

class DefaultTextfield extends StatelessWidget {
  String text;
  IconData icon;
  EdgeInsetsGeometry margin;

  DefaultTextfield({
    super.key,
    required this.text,
    required this.icon,
    this.margin = const EdgeInsets.only(top: 50, left: 20, right: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(text),
          border: InputBorder.none,
          prefixIcon: Container(
            margin: EdgeInsets.only(top: 10),
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              children: [
                Icon(icon),
                Container(width: 1, height: 20, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
