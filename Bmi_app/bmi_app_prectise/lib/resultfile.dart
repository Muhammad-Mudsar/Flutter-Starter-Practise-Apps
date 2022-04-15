import 'package:flutter/material.dart';
class Resultscreen extends StatelessWidget {
  const Resultscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI Result'),

      ),
      body: Text('Body Data'),
    );
  }
}
