import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable.dart';

const bottomContainerHeight = 80.0;
const buttonColor = Color(0xFF1d1e33);
const inactiveColor = Color(0xff111328);
const bottomContainerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColour = inactiveColor;
  Color femaleCardColour = inactiveColor;


// 1 = male , 2 = female
  void updateColor(int gender){
    //male card pressed
if (gender == 1){
  if(maleCardColour == inactiveColor){
    maleCardColour = buttonColor;
    femaleCardColour = inactiveColor;
  }else{
    maleCardColour = inactiveColor;
  }
}
  if(gender == 2){
    if(femaleCardColour == inactiveColor){
      femaleCardColour = buttonColor;
      maleCardColour = inactiveColor;
    }
    else{
      femaleCardColour = inactiveColor;
    
  }

}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(1);
                        });
                      },
                                          child: ReusableCard(
                          cardChild: InsideButton(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                          colour: maleCardColour,
                          ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColor(2);
                        });
                      },
                                          child: ReusableCard(
                        cardChild: InsideButton(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                        colour: femaleCardColour,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: buttonColor,
            )),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: buttonColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: buttonColor,
                  )),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
