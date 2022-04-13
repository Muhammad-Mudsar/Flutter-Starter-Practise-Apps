import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'containerfile.dart';

const activecolor=Color(0xFF1D1E33);
const deactivecolor=Color(0xFF111328);
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
 Gender selectGender;
     //Gender.male;


//   Color malecolor = deactivecolor;
//   Color femalecolor = deactivecolor;
//
//
// void updateColor(Gender gendertype) {
//     if (gendertype == Gender.male) {
//       Color malecolor = activecolor;
//       Color femalecolor = deactivecolor;
//     }
//     if (gendertype == Gender.female) {
//       Color malecolor = deactivecolor;
//       Color femalecolor = activecolor;
//     }
//   }
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
                        selectGender=Gender.male;
                       // updateColor(Gender.male);
                      });
                    },
                    child: RepeatContainerCodemi(
                      //alt+enter
                      colors: selectGender==Gender.male?activecolor:deactivecolor,
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
                      selectGender=Gender.female;
                      //updateColor(Gender.female);
                    });
                  },
                  child: RepeatContainerCodemi(
                    colors: selectGender==Gender.female?activecolor:deactivecolor,
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
//enamuration constants ko text form main display karwany main help karti ha
      );
    }
  }








