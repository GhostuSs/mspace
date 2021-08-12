import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Report();
  }
}

class _Report extends State<Report>{
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 15.0,top: 70.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  iconSize: 26,
                  onPressed: (){
                    Navigator.pushNamed(context, '/info');
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kPersonalBlack,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(top: 7),
                      child: Text(
                    'Отчет',
                    style: TextStyle(
                        fontSize: 26.0,
                        fontFamily: 'Formular',
                        fontWeight: FontWeight.bold,
                        color: kPersonalBlack
                    ),
                  )
                  )
              ),
            ],
          )
          ),
          Padding(
              padding: EdgeInsets.only(top: 25,bottom: 10,),
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
                  child:
                      Stack(
                        children: [
                        Container(
                      width: 10,
    height: 150,
    color: Color(0xFFA6F0A0),
    ),
                        Padding(
                            padding: EdgeInsets.only(left: 20,top: 10),
                          child: Text(
                            'Задача №1',
                            style: TextStyle(
                              color: kPersonalBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Formular',
                              fontSize: 13.0
                            ),
                          ),
                        ),
                          Padding(
                            padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                            child: Text(
                                exercise,
                                maxLines: 20,
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                style:
                                TextStyle(
                                    fontFamily: 'Formular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                )
                            ),
                          )
                        ],
                      )
              )),
          Padding(
              padding: EdgeInsets.only(top: 25,bottom: 10),
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
                  child:
                  Stack(
                    children: [
                      Container(
                        width: 10,
                        height: 150,
                        color: Color(0xFFF18F8F),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          'Задача №1',
                          style: TextStyle(
                              color: kPersonalBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Formular',
                              fontSize: 13.0
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text(
                            exercise,
                            maxLines: 20,
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            style:
                            TextStyle(
                                fontFamily: 'Formular',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            )
                        ),
                      )
                    ],
                  )
              )),
          Padding(
              padding: EdgeInsets.only(top: 25,bottom: 10),
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
                  child:
                  Stack(
                    children: [
                      Container(
                        width: 10,
                        height: 150,
                        color: Color(0xFFA6F0A0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20,top: 10),
                        child: Text(
                          'Задача №1',
                          style: TextStyle(
                              color: kPersonalBlack,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Formular',
                              fontSize: 13.0
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Text(
                            exercise,
                            maxLines: 20,
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            style:
                            TextStyle(
                                fontFamily: 'Formular',
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            )
                        ),
                      )
                    ],
                  )
              )),
        ],
      ),
    );
  }
}

void main()=>runApp(MaterialApp(home:Report()));