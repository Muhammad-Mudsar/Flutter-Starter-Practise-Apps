import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerfile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR'),
      ),
      body: Column(
        children:<Widget>[
          Expanded(child:Row(
            children: <Widget> [
            Expanded(
              child: RepeatContainerCodemi(
                colors:Color(0xFF0A0E21),
                CardWidget:RepeatTextandIconWidget(
                  iconData:FontAwesomeIcons.male,
                  label: 'Male',
                ),
              ),

            ),
            Expanded(child: RepeatContainerCodemi(
              colors:Color(0xFF0A0E21),
              CardWidget:RepeatTextandIconWidget(
                iconData:FontAwesomeIcons.female,
                label:'Female',

              ),

            ),
            ),


    ],
      ),),
          Expanded(child:RepeatContainerCodemi(colors:Color(0xFF0A0E21),),
          ),
          Expanded(child:Row(
          children: <Widget> [
          Expanded(child:  RepeatContainerCodemi(colors:Color(0xFF0A0E21),)
            ,),
          Expanded(child: RepeatContainerCodemi(colors:Color(0xFF0A0E21),),
          ),


        ],
      ),),

        ],
      ),
      );
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.add),

        );
  }
}




