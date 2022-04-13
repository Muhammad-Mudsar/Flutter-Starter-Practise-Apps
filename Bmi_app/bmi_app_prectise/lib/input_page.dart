import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerfile.dart';

const activecolor=Color(0xFF1D1E33);
const deactivecolor=Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color malecolor = deactivecolor;
  Color femalecolor = deactivecolor;

  void updateColor(int gender) {
    if (gender == 1) {
      Color malecolor = activecolor;
      Color femalecolor = deactivecolor;
    }
    if (gender == 2) {
      Color malecolor = deactivecolor;
      Color femalecolor = activecolor;
    }
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: RepeatContainerCodemi(
                      //alt+enter
                      colors: malecolor,
                      CardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                  ),

                ),
                Expanded(child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: RepeatContainerCodemi(
                    colors: femalecolor,
                    CardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',

                    ),

                  ),
                ),
                ),


              ],
            ),),
            Expanded(child: RepeatContainerCodemi(colors: Color(0xFF0A0E21),),
            ),
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatContainerCodemi(colors: Color(0xFF0A0E21),)
                  ,),
                Expanded(
                  child: RepeatContainerCodemi(colors: Color(0xFF0A0E21),),
                ),


              ],
            ),),

          ],
        ),
      );
      floatingActionButton:
      FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),

      );
    }
  }




