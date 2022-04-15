import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerFile.dart';
import 'IconTextFile.dart';
import 'constantFile.dart';
import 'ResultFile.dart';
import 'package:bmi_calculator/calculatorFile.dart';


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
  int Sliderheight=180;
  int SliderWeight=60;
  int SliderAge=20;
 /* Color maleColor = deActiveColor;
  Color feMaleColor = deActiveColor;
  void updateColor(Gender gendertype){
    if(gendertype == Gender.male){
      maleColor = activeColor;
      feMaleColor = deActiveColor;
    }
    if(gendertype == Gender.female){
      feMaleColor = activeColor;
      maleColor = deActiveColor;
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(


                    child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                          selectGender=Gender.male;
                        });
                      },
                colors: selectGender==Gender.male?activeColor:deActiveColor,
                cardwidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                ),
              ),
                  ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colors: selectGender==Gender.female?activeColor:deActiveColor,
                  cardwidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.female,
                     label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(child:new RepeatContainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Height',
                style: LabelStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(Sliderheight.toString(),
                  style: knumberstyle),
                  Text('cm',
                    style: LabelStyle,),


              ]
              ),
                Slider(value: Sliderheight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                    Sliderheight=newValue.round();
                  },
                ),

              ],
            ),
          )),
          Expanded(child: Row(
            children:<Widget> [
              Expanded(child:new RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('WEIGHT',
                    style: LabelStyle,),
                    Text(
                      SliderWeight.toString(),
                      style: knumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIcon(
                            iconData: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                SliderWeight--;
                              });
                            }),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIcon(
                            iconData: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                SliderWeight++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              )),
              Expanded(child:new RepeatContainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('AGE',
                      style: LabelStyle,),
                    Text(
                      SliderAge.toString(),
                      style: knumberstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIcon(
                            iconData: FontAwesomeIcons.minus,
                            onPress: (){
                              setState(() {
                                SliderAge--;
                              });
                            }),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIcon(
                            iconData: FontAwesomeIcons.plus,
                            onPress: (){
                              setState(() {
                                SliderAge++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ))
            ],
          ),),
          GestureDetector(
            onTap: (){
              CalculatorBrain calc=CalculatorBrain(height: Sliderheight, weight: SliderWeight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getResult(),
                interpretation: calc.getInterpretation(),

              )));
            },
            child: Container(
            child:Center(
              child: Text(
                'calculated',
                style: klargebuttonstyle,
              ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}


class RoundIcon extends StatelessWidget{
  RoundIcon({@required this.iconData, @required this.onPress});
  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        child: Icon(iconData),
        onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}

















