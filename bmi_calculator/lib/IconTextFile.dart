import 'package:flutter/material.dart';
import 'constantfile.dart';
class RpeatTextandICONWidget extends StatelessWidget {
  RpeatTextandICONWidget({required this.iconData, required this.label});

  late final IconData iconData;
  late final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 850,),
        SizedBox(

        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}