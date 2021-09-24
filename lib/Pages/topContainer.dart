import 'package:flutter/material.dart';
import '../constant.dart';


class TopContainers extends StatelessWidget {
  final IconData icons;
  final String? textdata;

  TopContainers({required this.icons, this.textdata});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(icons,size: 80),
        SizedBox(height: 10,),
        Text(textdata!,style: textstyle,)

      ],
    );
  }
}