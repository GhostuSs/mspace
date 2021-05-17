import 'package:enroll_spb_luxury/components/modalSheet.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecommendsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _RecommendsScreen();
  }
}
class _RecommendsScreen extends State<RecommendsScreen>{
  var textFieldController;
  String _answer;
  String _correct="";
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0 ,MediaQuery.of(context).size.height*0.1 ,0 ,0),
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
                  padding: EdgeInsets.fromLTRB(20,20,0,0),
                  child: TextField(
                    controller: textFieldController,
                    autofocus: true,
                    onEditingComplete: (){
                      setState(() {
                        _answer=textFieldController.text;
                      });
                    },
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        _answer==_correct ? Navigator.pushNamed(context,'/auth') :Text('');
                      });
                    },
                    child: Text(
                        'проверить'.toUpperCase(),
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
              Theme(
                data:Theme.of(context),
                child: ModalTrigger(),
              )
            ]
            ),
          )
        ],
      )
    );
  }
}
void main(){
  runApp(MaterialApp(home: RecommendsScreen()));
}