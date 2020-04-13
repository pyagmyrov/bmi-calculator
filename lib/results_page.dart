import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable.dart';
import 'bottomButton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpretation,@required this.bmiResult, @required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: buttonColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultsTextStyle),
                  Text(
                    bmiResult,style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kbodyTextStyle,
                  ),
                  
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: BottomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
                    Navigator.pop(context);
                  },),)
        ],
      ),
    );
  }
}
