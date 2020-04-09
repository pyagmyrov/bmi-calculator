import 'package:flutter/material.dart';


class InsideButton extends StatelessWidget {
  InsideButton({this.icon,this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: TextStyle(
              color: Color(0xff8d8e98), 
              fontSize: 18.0
              ),
        ),
      ],
    );
  }
}