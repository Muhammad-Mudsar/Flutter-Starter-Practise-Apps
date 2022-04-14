import 'dart:html';

import 'package:bmi_app_prectise/constantfile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'constantfile.dart';
import 'containerfile.dart';


enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
// Gender selectGender;//
 Gender selectGender= Gender.male;
 int SliderHeight=180;
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
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  // child: GestureDetector(
                  //   onTap: (){
                  //     setState(() {
                  //       selectGender=Gender.male;
                  //      // updateColor(Gender.male);
                  //     });
                  //   },
                    child: RepeatContainerCodemi(
                      onPressed:(){

                        setState(() {
                          selectGender=Gender.male;
                        });
                      },
                      //alt+enter
                      colors: selectGender==Gender.male?activecolor:deactivecolor,
                      CardWidget: RepeatTextandIconWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'Male',
                      ),
                    ),
                 // ),gesture dectoclose

                ),
                Expanded(
                  // child: GestureDetector(
                  // onTap: (){
                  //   setState(() {
                  //     selectGender=Gender.female;
                  //     //updateColor(Gender.female);
                  //   });
                  // },
                  child: RepeatContainerCodemi(
                    onPressed:(){
                      setState(() {
                        selectGender=Gender.female;
                      });
                    },
                    colors: selectGender==Gender.female?activecolor:deactivecolor,
                    CardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.female,
                      label: 'Female',

                    ),

                  ),
               // ),gesture dector closed
                ),


              ],
            ),),
            Expanded(child: RepeatContainerCodemi(
              colors: Color(0xFF0A0E21),
            CardWidget:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HIGHT',style:klabelstyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(SliderHeight.toString(),
                  style:k2label),
                  Text('cm',style:klabelstyle),




                ],
              ),
                Slider(
                  value:SliderHeight.toDouble(),
                  min: 120.0,
                  max: 180.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor:Color(0xFE8D8E98),
                  onChanged:(double newvalue){
                    setState(() {
                      SliderHeight=newvalue.round();

                    });
                  },


                ),


              ],
            ),
            ),
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




