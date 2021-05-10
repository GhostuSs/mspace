import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/material.dart';

class TrainingScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TrainingScreen();
  }
}

class _TrainingScreen extends State<TrainingScreen>{
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
        child:  Scaffold(
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  'Тренировка',
                  style: TextStyle(
                      fontFamily:'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: kPersonalBlack
                  ),
                ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child:
                        buildButton('решать рекомендации', '/recommends')),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child:
                        buildButton('архив задач', '/recommends')),
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child:
                        buildButton('вступительный вариант', '/recommends')),
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
Widget buildButton(String btnText,String route){
  return Container(
    height: 50,
    width: double.infinity,
    child: ElevatedButton(
        onPressed: (){
          setState(() {
            Navigator.pushNamed(context, "$route");
          });
        },
        child: Text(
            btnText.toUpperCase(),
            style: TextStyle(
                fontSize: 16,
                color: kPersonalWhite,
                fontWeight: FontWeight.bold,
                fontFamily: 'Formular'
            )
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ))),
  );
}
}

void main(){
  runApp(TrainingScreen());
}