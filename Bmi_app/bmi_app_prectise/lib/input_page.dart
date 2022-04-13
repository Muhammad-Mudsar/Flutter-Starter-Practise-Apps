import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
       style: TextStyle(
       fontSize: 30.0,
       color:Color(0xFF8D8E98),
       //colors:Color(0xFF8D8E98),
     ),),
               ],

              );
  }
}

class RepeatContainerCodemi extends StatelessWidget {
       RepeatContainerCodemi ({@required this.colors, @required this.CardWidget});
  final Color colors;
  final Widget CardWidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),
      child:CardWidget,
      decoration:BoxDecoration(
          color: colors,
        borderRadius: BorderRadius.circular(10.0)
      ),

    );
  }
}
