import 'dart:math';

class BmiBrain {
  final int? height;
  final int? weight;
  final int? age;
  final String? gender;


  BmiBrain({this.height, this.weight, this.age, this.gender});

  double _bmi = 0;
  String? gendersmale = "Gender.male";
  String? gendersfemale = "Gender.male";

  String calculateBmi() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return "OverWeight";
    }
    else if (_bmi > 18.5) {
      return "Normal";
    }
    else {
      return "UnderWeight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "You have heigher than your body weight. Try to exercise more";
    }
    else if (_bmi > 18.5) {
      return "You have normal body weight";
    }
    else {
      return "Your Bmi result is quite low you shold eat more!";
    }
  }

  String ageCalculation() {
    if (age! >= 45) {
      return "you are old";
    } else if (age! >= 21 && age! < 45) {
      return "your are young";
    }
    else if (gender == gendersmale!) {
      return "teenager boy";
    }
    else if (gender == gendersfemale!) {
      return "teenager girl";
    }
    else {
      return "plz selected gender";
    }
  }


}