import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/presentation/components/arrayOfExercises.dart';
import 'package:enroll_spb_luxury/presentation/components/timer.dart';
import 'package:flutter/material.dart';

class IntroductoryExamScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Test();
  }
}

class _Test extends State<IntroductoryExamScreen>{
  int counter=1;
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  var textFieldController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 40,left: 20),
                  child:TextButton(
                      onPressed: (){
                        showDialog(context: context, builder: (context) => buildExitDialog());
                      },
                      child: Text(
                        'Завершить',
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Formular',
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      )
                  )
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 5,bottom:10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
                  child: Text(
                    'Вступительная',
                    style: TextStyle(
                      color: kPersonalBlack,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                    padding: EdgeInsets.only(right: 20),
                    child:IconButton(onPressed: (){
                      _showModalBottomSheet(context);
                    },
                        icon: Image.asset('lib/assets/more.png',scale: 10)
                    )
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05),
                  child:Icon(Icons.timer,color: kPersonalBlack,size: 26)
              ),
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Оставшееся время',
                    style: TextStyle(
                      color: kPersonalBlack,
                      fontSize: 22,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,

                    ),
                  )
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: CountDownTimer(
                    secondsRemaining: 120,
                    countDownTimerStyle: TextStyle(
                        color: kPersonalBlack,
                        fontFamily: 'Formular',
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    )),
              )
            ],
          ),
          ArrayOfExercises(),
          Padding(
              padding: EdgeInsets.only(top: 25,bottom: 30,),
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: kPersonalWhite,
                      boxShadow: [
                        BoxShadow(
                            color: kPersonalBlack.withOpacity(0.4),
                            blurRadius: 0.5,
                            spreadRadius:0.2,
                            offset: Offset(0, 1)
                        )
                      ]
                  ),
                  constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                        exercise,
                        maxLines: 20,
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        style:
                        TextStyle(
                            fontFamily: 'Formular',
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )
                    ),
                  )
              )),
          Padding(
              padding: EdgeInsets.only(left: 15,right: 15),
              child:buildAnswerTextField(context)
          ),
          Padding(
              padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  bottom: 20,
                  right: 20
              ),
              child: Container(
                height: 50,
                width: double.infinity,
                child:
                ElevatedButton(
                  onPressed:(){
                    textFieldController.clear();
                    counter++;
                  },
                  child: Text(
                      'Записать в ответ',
                      style: TextStyle(
                          fontSize: 16,
                          color: kPersonalWhite,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular'
                      )),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                    ),
                  ),
                ),
              )
          ),
          Spacer(),
          Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height*0.08
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: 50,
                        width: 85,
                        child: ElevatedButton(
                            onPressed: (){
                            },
                            child: Text(
                                'Назад',
                                style: TextStyle(
                                    fontSize: 13,
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
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Container(
                        height: 50,
                        width: 85,
                        child: ElevatedButton(
                            onPressed: (){

                            },
                            child: Text(
                                'Вперед',
                                style: TextStyle(
                                    fontSize: 13,
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
              ))
        ],
      )
    );
  }
  _showModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height*0.35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 2),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom:15),
                          child: Container(
                              height: 3.5,
                              width: 60,
                              color: Colors.grey.withOpacity(0.6)
                          ),
                        ),
                        Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                      'Информация',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Formular',
                                          fontSize: 16
                                      )
                                  ),


                            ]
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 30.0),
                          child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:15.0,right: 15.0,bottom: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Школа',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    'ФМЛ №239',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:15.0,right: 15.0,bottom: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Класс',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '5',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:15.0,right: 15.0,bottom: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Год',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '2015',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:15.0,right: 15.0,bottom: 15.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Вариант',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    '2',
                                    style: TextStyle(
                                        color: kPersonalBlack,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Formular',
                                        fontSize: 16.0
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                        )
                      ],
                    )
                )
              ],
            )
          );
        }
    );
  }
  Widget buildAnswerTextField(BuildContext context) {
    return TextField(
      controller: textFieldController,
      autofocus: false,
      cursorColor: kPersonalBlack,
      decoration: InputDecoration(
        labelText: 'Ответ',
        focusColor: kPersonalBlack,
      ),
      onChanged: (String s){
      },
    );
  }
  buildExitDialog(){
    return Dialog(
      elevation: 3.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15,bottom: 25),
            child: Text(
              'Вы уверены?',
              style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'Formular',
                  fontWeight: FontWeight.bold,
                  color: kPersonalBlack
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 10,left: 15,right: 15) ,
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                      showDialog(context: context, builder: (context) => buildResultDialog());
                    });
                  },
                  child: Text(
                      'Да, завершить',
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
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 15,bottom: 30,left: 15,right: 15) ,
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  child: Text(
                      'Нет, продолжить решать',
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
            ),
          )
        ],
      ),
    );
  }
  buildResultDialog(){
    return Dialog(
      elevation: 3.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15,bottom: 25),
            child: Text(
              'Результат',
              style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'Formular',
                  fontWeight: FontWeight.bold,
                  color: kPersonalBlack
              ),
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 18,left: 15,right: 15) ,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Процент решения',
                  style: TextStyle(
                    color: kPersonalBlack,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Formular',
                    fontSize: 15.0,
                  ),
                ),
                Spacer(),
                Text(
                  '80%',
                  style: TextStyle(
                    color: kPersonalBlack,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Formular',
                    fontSize: 15.0,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:EdgeInsets.only(bottom: 10,left: 15,right: 15) ,
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context,'/examreport');
                    });
                  },
                  child: Text(
                      'Подробный отчет',
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
            ),
          ),
          Padding(
            padding:EdgeInsets.only(top: 15,bottom: 20,left: 15,right: 15) ,
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context, '/info');
                    });
                  },
                  child: Text(
                      'Завершить тренировку',
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
            ),
          )

        ],
      ),
    );
  }
}