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
                  child:IconButton(onPressed: (){}, icon: Image.asset('lib/assets/more.png',scale: 10)),)
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
                    'Оставшеейся время',
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
          Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kPersonalBlack.withOpacity(0.4),
                    blurRadius: 0.3,
                    spreadRadius:0.0,
                  )
                ]
              ),
              constraints: BoxConstraints(maxWidth: 0.9*MediaQuery.of(context).size.width),
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
          )
        ],
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(
    home: Test()
  ));
}