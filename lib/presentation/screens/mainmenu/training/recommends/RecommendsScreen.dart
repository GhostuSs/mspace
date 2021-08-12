import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecommendsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RecommendsScreen();
  }
}
class _RecommendsScreen extends State<RecommendsScreen>{
  var textFieldController = TextEditingController();
  var _answer;
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0 , height*0.1,0 ,0),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  child: Stack(
                    children: [
                      Align(alignment: Alignment.bottomCenter,child: Text(
                        'Рекомендации',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Formular',
                            fontSize: 30,
                            color: kPersonalBlack
                        ),
                      ),),
                      Align(alignment: Alignment.bottomLeft,child: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      })),
                    ],
                  )
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                              child:
                              Container(
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
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2.5,
                      offset: Offset(-1, 0), // changes position of shadow
                    ),

                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    cursorColor: kPersonalBlack,
                    maxLines: 1,
                    decoration: InputDecoration(
                          hintText: 'Ответ'
                    ),
                    controller: textFieldController,
                    autofocus: true,
                    onChanged: (str){
                        _answer=textFieldController.text;
                      }
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child:
                    ElevatedButton(
                        onPressed: (){
                          setState(() {
                            Navigator.pushNamed(context,'/answer');
                          });
                        },
                        child: Text(
                            'Проверить',
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
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child:
                    ElevatedButton(
                      onPressed:_onButtonPressed,
                      child: Text(
                          'Подсказка',
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
              )
            ]
            )
          )
        ]
      )
    );
  }
  void _onButtonPressed(){
    final String tip = 'Если в группу чисел добавить число, равное среднему арифметическому этой группы, то среднее арифметическое новой группы будет равно среднему арифметическому начальной группы.';
      showModalBottomSheet(context: context,
          elevation: 3.0,
          builder: (context)
          {
            return Container(
              height: MediaQuery.of(context).size.height*0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:20),
                    child: Container(
                        height: 3.5,
                        width: 60,
                        color: Colors.grey.withOpacity(0.6)
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                                'Подсказка',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Formular',
                                    fontSize: 26
                                )
                            )
                          ]
                      )
                  ),
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  child:
                                  Container(
                                      constraints: BoxConstraints(maxWidth: 0.9*MediaQuery.of(context).size.width),
                                      child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                            tip,
                                            maxLines: 20,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.justify,
                                            style:
                                            TextStyle(
                                                fontFamily: 'Formular',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)
                                        ),
                                      )
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            );
      }
      );
  }
}
void main(){
  runApp(MaterialApp
    (
      home:RecommendsScreen()
  )
  );
}