import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  ReuseableContainer({@required this.colour, this.child, this.onPress});

  final Color? colour;
  final Widget? child;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onPress,
      child: Container(
        child: child,
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
