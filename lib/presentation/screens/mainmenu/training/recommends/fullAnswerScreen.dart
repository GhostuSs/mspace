import 'package:catex/catex.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FullAnswerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FullAnswerScreen();
  }
}
class _FullAnswerScreen extends State<FullAnswerScreen>{
  var textFieldController = TextEditingController();
  String _description="Сумма первых двадцати чисел натурального ряда равна (1 + 20)·10 = 210. Следовательно, если одно из них стёрто, то сумма S оставшихся чисел удовлетворяет неравенству  190 ≤ S ≤ 209.  Среднее арифметическое оставшихся чисел равно S/19.  По условию, это – натуральное число, значит, S кратно 19. На отрезке [190, 209] есть ровно два таких числа: 190 и 209. Если  S = 190,  то стерли число 20, а если  S = 209,  то стёрли единицу.";
  var answer = 20;
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0 ,MediaQuery.of(context).size.height*0.1 ,0 ,0),
                child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                          child: Stack(
                            children: [
                              Align(alignment: Alignment.bottomCenter,child: Text(
                                'Решение',
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
                                                overflow: TextOverflow.ellipsis,
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
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),

                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top:10,left: 10,right: 10),
                          child: DefaultTextStyle.merge(child: CaTeX(r'\ S =: \sum{f_i}'),style: TextStyle(fontSize: 30))),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
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
                                                _description,
                                                maxLines: 25,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                TextStyle(
                                                    fontFamily: 'Formular',
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16)
                                            ),
                                          )
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Text(
                          'Ответ: $answer',
                          maxLines: 25,
                          overflow: TextOverflow.ellipsis,
                          style:
                          TextStyle(
                              fontFamily: 'Formular',
                              fontWeight: FontWeight.bold,
                              fontSize: 16)
                      ),

                    ]
                ),
              )
            ],
          ),
        )
    );
  }
}