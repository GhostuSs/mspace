import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/presentation/screens/mainmenu/training/archiveOfExercises/listExcercisesScreen.dart';
import 'package:enroll_spb_luxury/presentation/screens/mainmenu/training/recommends/RecommendsScreen.dart';
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
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, height*0.1, 20, 0),
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
                padding: EdgeInsets.only(top: height*0.15),
                child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pushNamed(context, '/recommend');
                              });
                            },
                            child: Text(
                                'Решать рекомендации',
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
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child:Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pushNamed(context,'/archive');
                              });
                            },
                            child: Text(
                                'Архив задач',
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
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0,30, 0, 30),
                      child:Container(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: (){
                              setState(() {
                                Navigator.pushNamed(context, '/introclass');
                              });
                            },
                            child: Text(
                                'Вступительный вариант',
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
                      )),
                ],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
void main()=>runApp(MaterialApp(home: RecommendsScreen()));