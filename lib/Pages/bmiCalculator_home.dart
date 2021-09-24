import 'package:bmi_calculator/Pages/resultPage.dart';
import 'package:bmi_calculator/Pages/reusableContainer.dart';
import 'package:bmi_calculator/Pages/topContainer.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmiCalculatorBrain.dart';

enum Gender { male, female }

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  _BmiCalculatorState createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  Gender? selectedgender;
  String? genders;
  int height = 180;
  int weight = 60;
  int age = 19;

  // Color malecardcolor=inActiveColor;
  // Color femalecardcolor=inActiveColor;
  //
  // void updateColor(Gender genderSelected){
  //   if(genderSelected==Gender.male){
  //     if(malecardcolor==inActiveColor){
  //       malecardcolor=activeCardColur;
  //       femalecardcolor=inActiveColor;
  //     }
  //     else{
  //       malecardcolor=inActiveColor;
  //     }
  //   }
  //
  //     if(genderSelected==Gender.female){
  //     if(femalecardcolor==inActiveColor){
  //       femalecardcolor=activeCardColur;
  //       malecardcolor=inActiveColor;
  //     }
  //     else{
  //       femalecardcolor=inActiveColor;
  //     }
  //   }
  //
  //
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableContainer(
                    onPress: () {
                      setState(() {
                        selectedgender = Gender.male;
                        genders=Gender.male.toString();
                      });
                    },
                    colour: selectedgender == Gender.male
                        ? activeCardColur
                        : inActiveColor,
                    child: TopContainers(
                      icons: FontAwesomeIcons.mars,
                      textdata: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableContainer(
                      onPress: () {
                        setState(() {
                          selectedgender = Gender.female;
                          genders=Gender.female.toString();
                        });
                      },
                      colour: selectedgender == Gender.female
                          ? activeCardColur
                          : inActiveColor,
                      child: TopContainers(
                        icons: FontAwesomeIcons.venus,
                        textdata: 'FEMALE',
                      )),
                )
              ],
            ),
          ),
          Expanded(
              child: ReuseableContainer(
            onPress: () {},
            colour: activeCardColur,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "HEIGHT",
                  style: textstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      height.toString(),
                      style: numberStyle,
                    ),
                    Text(
                      "cm",
                      style: textstyle,
                    )
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x15EB1555)),
                  child: Slider(
                      value: height.toDouble(),
                      inactiveColor: Color(0xFF8D8E98),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      }),
                )
              ],
            ),
          )),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReuseableContainer(
                  colour: activeCardColur,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: textstyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                              childicon: Center(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            childicon: Center(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            onpressed: () {
                              setState(() {
                                if(weight==1){
                                  weight--;
                                }
                                else{
                                  weight=1;
                                }
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReuseableContainer(
                  colour: activeCardColur,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AGE",
                        style: textstyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundIconButton(
                              childicon: Center(
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                ),
                              ),
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(
                            childicon: Center(
                              child: Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            onpressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BmiBrain calculation = BmiBrain(height: height, weight: weight,age:age,gender:genders);
              print(genders);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    bmiResultCalculation: calculation.calculateBmi(),
                    bmiResultDiscription: calculation.getResult(),
                    bmiResultInterpetition: calculation.getInterpretation(),
                    bmiResultAge: calculation.ageCalculation(),
                  ),
                ),
              );
            },
            child: Container(
              height: 80,
              width: double.infinity,
              color: botomContainerColor,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Center(
                child: Text(
                  "CALCULATE",
                  style: largetextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Widget? childicon;
  final Function()? onpressed;

  RoundIconButton({this.childicon, this.onpressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: Color(0xFF4C4F5E),
      child: childicon,
    );
  }
}
