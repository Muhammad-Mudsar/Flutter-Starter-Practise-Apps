import 'package:flutter/material.dart';
class  Resultscreen extends StatelessWidget {

  Resultscreen(
  {
    @required this.interpretation,
    @required this.bmiResult,
    @required this.resultText

}
      );
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Result'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: Center(
              child: Text(
                'Your Result',
                style: KTitkeStyleS2,
              ),
            ),
          )),
          Expanded(flex: 5,
          child:RepeatContainerCode(
            colors: activeColor,
              cardwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                  resultText,
                  style: KResultText),
                  Text(
                  bmiResult,
                      style: KBMiTextStyle),
                  Text(interpretation,
                  textAlign: TextAlign.center,
                  style: KbodyTextStyle,
                  ),
                ],
              ),
          )
          ),
          Expanded(child: GestureDetector(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
            },
            child: Container(
              child:Center(
                child: Text(
                  'Recalculated',
                  style: klargebuttonstyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 50.0,
            ),
          ),),

        ],
      )
    );
  }
}

