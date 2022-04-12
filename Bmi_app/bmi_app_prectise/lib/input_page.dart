import 'package:flutter/material.dart';
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
              child: RepeatContainerCodemin(
                colors:Color(0xFF0A0E21),),

            ),
            Expanded(child: RepeatContainerCodemin(colors:Color(0xFF0A0E21),),
            ),


    ],
      ),),
          Expanded(child:RepeatContainerCodemin(colors:Color(0xFF0A0E21),),
          ),
          Expanded(child:Row(
          children: <Widget> [
          Expanded(child:  RepeatContainerCodemin(colors:Color(0xFF0A0E21),)
            ,),
          Expanded(child: RepeatContainerCodemin(colors:Color(0xFF0A0E21),),
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

class RepeatContainerCodemin extends StatelessWidget {
  RepeatContainerCodemin({@required this.colors});
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0),
      decoration:BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0)
      ),

    );
  }
}
