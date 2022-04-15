import 'package:bmi_app_prectise/constantfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconTextfile.dart';
import 'constantfile.dart';
import 'resultfile.dart';
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
 int sliderWeigt=60;
 int sliderage=20;
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
                  child: RepeatContainerCodemi(
                    colors: Color(0xFF0A0E21),
                  CardWidget:Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Weight',style:klabelstyle,),
                      Text(sliderWeigt.toString(),
                        style:k2label,
                      ),
                      Row(
                        children: [
                        Roundbutton(
                          icondata:FontAwesomeIcons.minus ,
                          onPress:(){
                           setState(() {
                             sliderWeigt--;
                           });
                        },

                        ),
                        SizedBox(width: 10.0,),
                        Roundbutton(
                          icondata:FontAwesomeIcons.plus ,
                          onPress:(){
                            setState(() {
                              sliderWeigt++;
                            });
                          },
                        ),
                        ],
                      ),
                    ],

                  )

                    ,)
                  ,),
                Expanded(
                  child: RepeatContainerCodemi(colors: Color(0xFF0A0E21),
                      CardWidget:Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE',style:klabelstyle,),
                          Text(sliderage.toString(),
                            style:k2label,
                          ),
                          Row(
                            children: [
                              Roundbutton(
                                icondata:FontAwesomeIcons.minus ,
                                onPress:(){
                                  setState(() {
                                    sliderage--;
                                  });
                                },

                              ),
                              SizedBox(width: 10.0,),
                              Roundbutton(
                                icondata:FontAwesomeIcons.plus ,
                                onPress:(){
                                  setState(() {
                                    sliderage++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],

                      )
//x
                  ),

                ),
                GestureDetector(
                  onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Resultscreen()));
                  },
                  child: Container(
                    child:Center(
                        child: Text('Calculate',style: k2largelabel,)),
                    color: Color(0xFA0AFE21),
                    margin:EdgeInsets.only(top:10.0),
                    width:double.infinity,
                    height: 80.0,



                  ),
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

  class Roundbutton extends StatelessWidget {
  Roundbutton({@required this.icondata,@required this.onPress}),
  final Icondata icondata;
  final Function onPress;



    @override
    Widget build(BuildContext context) {
      return RawMaterialButton(
        child: Icon(icondata),
        onPressed: onPress,
        elevation: 6.0,
        constraints: BoxConstraints.tightFor(
          height: 56.0,
          width: 56.0,
        ),
        shape: CircleBorder(),
        fillColor:Color (0xFF4C4F5E),



      );
    }
  }



