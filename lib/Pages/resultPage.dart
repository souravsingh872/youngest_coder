import 'package:bmi_calculator/Pages/reusableContainer.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String? bmiResultCalculation;
  final String? bmiResultDiscription;
  final String? bmiResultInterpetition;
  final String? bmiResultAge;


  ResultPage({@required this.bmiResultCalculation,@required this.bmiResultDiscription,@required this.bmiResultInterpetition,@required this.bmiResultAge});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,),textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(child: Text("Your Result",style: resulttextStyle,),margin: EdgeInsets.fromLTRB(20, 10, 0, 0),),),
          Expanded(
            flex: 5,
              child:ReuseableContainer(
            colour: activeCardColur,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Text(bmiResultDiscription.toString(),style: normaltextStyle,),
                Text(bmiResultCalculation.toString(),style: bmitextStyle,),
                Text(bmiResultAge.toString(),style:yourtextstyle,textAlign: TextAlign.center,),
                Text(bmiResultInterpetition.toString(),style:yourtextstyle,textAlign: TextAlign.center,)

              ],
            ),
          ) ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 80,
              width: double.infinity,
              color: botomContainerColor,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                child: Text("RE-CALCULATE",style: largetextStyle,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
