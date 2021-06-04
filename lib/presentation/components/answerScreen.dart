import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class AnswerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AnswerScreen();
  }
}

class _AnswerScreen extends State<AnswerScreen>{
  bool status = true;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.fromLTRB(20, height*0.1 ,20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text('Результат',
                style: TextStyle(
                    fontFamily: 'Formular',
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                )
            )),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, height*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Ответ:',
                    style: TextStyle(
                        fontFamily: 'Formular',
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    )
                ),
                status ? Text('Правильный',
                    style: TextStyle(
                        fontFamily: 'Formular',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF33D924),
                        fontSize: 20
                    )
                ) : Text('Неправильный',
                    style: TextStyle(
                        fontFamily: 'Formular',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFE1818),
                        fontSize: 20
                    )
                )
              ],
            ),),
            Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
            child: Container(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      Navigator.pushNamed(context,'/fullanswer');
                    });
                  },
                  child: Text(
                      'Посмотреть решение'.toUpperCase(),
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
            Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          Navigator.pushNamed(context,'/recommend');
                        });
                      },
                      child: Text(
                          'следующая задача'.toUpperCase(),
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
            Padding(padding: EdgeInsets.only(top: 10.0,bottom: 10.0),
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
                          'закончить тренировку'.toUpperCase(),
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
                ))
          ],
        ),
      )
    );
  }

}