import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/presentation/components/arrayOfExercises.dart';
import 'package:enroll_spb_luxury/presentation/components/timer.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Test();
  }
}

class _Test extends State<Test>{
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  var textFieldController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 50,left: 20),
                  child:TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/info');
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
                    padding: EdgeInsets.only(left: 90),
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
                  child:IconButton(onPressed: (){}, icon: Image.asset('lib/assets/more.png',scale: 10)))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20),
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
              child:buildAnswerTextField()
          ),
          Padding(
              padding: EdgeInsets.only(top: 30,left: 20,bottom: 20,right: 20),
              child: Container(
                height: 50,
                width: double.infinity,
                child:
                ElevatedButton(
                  onPressed:(){},
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
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1),
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
      ),
    );
  }
  Widget buildAnswerTextField() {
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
}


void main(){
  runApp(MaterialApp(
    home: Test()
  ));
}