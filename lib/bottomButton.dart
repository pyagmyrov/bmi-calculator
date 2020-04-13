import 'package:flutter/material.dart';
import 'constants.dart';


class BottomButton extends StatelessWidget {

BottomButton({@required this.onTap, @required this.buttonTitle});
final Function onTap;
final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(buttonTitle,style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
        ),
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: bottomContainerHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: bottomContainerColor,
        ),
      ),
    );
  }
}