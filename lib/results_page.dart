

import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.bmiResult,required this.interpretation,required this.resultText} );
  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULTOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container( padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                  )),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard( onPress: (){},
              colour: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle(
                        color: Color(0XFF24D876),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                   bmiResult,
                    style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    interpretation,
                    textAlign:TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          bottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
