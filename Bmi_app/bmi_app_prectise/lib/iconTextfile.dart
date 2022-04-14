import 'package:bmi_app_prectise/constantfile.dart';
import 'package:flutter/material.dart';
import 'constantfile.dart';
class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({@required this.iconData,this.label})
  final IconData iconData;
  final String label;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children:<Widget>[
        Icon(
          iconData,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,
          style:klabelstyle,
        ),
      ],

    );
  }
}