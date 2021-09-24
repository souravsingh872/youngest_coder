import 'package:bmi_calculator/Pages/bmiCalculator_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBmiCalculator());
}
class MyBmiCalculator extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme:ThemeData.dark().copyWith(
         primaryColor: Color(0xFF0A0E21),
         scaffoldBackgroundColor:  Color(0xFF0A0E21)
     ),
     home: BmiCalculator()
   );
  }
}


