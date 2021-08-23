import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroductorySchoolScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExcersisesScreen();
  }
}
class _ExcersisesScreen extends State<IntroductorySchoolScreen>{
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Stack(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios),iconSize: 26, onPressed: (){setState(() {
                      Navigator.pushNamed(context, '/info');
                    });
                    }),
                    Align(alignment: Alignment.bottomCenter,child: Text(
                      'Школа',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular',
                          fontSize: 35,
                          color: kPersonalBlack
                      ),
                    ))
                  ],
                )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              child: Scrollbar(
                interactive: true,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context,index){
                      return Padding(padding: EdgeInsets.only(bottom: 15.0),child: Container(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                              'ФМЛ №239',
                              style: TextStyle(
                            fontFamily: 'Formular',
                            fontWeight: FontWeight.bold,
                            color: kPersonalBlack,
                            fontSize: 18
                          )
                          ),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/introclass');
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: kPersonalBlack,
                              size: 30)
                          ),
                          subtitle: Stack(
                            children: [
                              Padding(
                              padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: LinearProgressIndicator(
                                  minHeight: 7,
                                  backgroundColor: kPersonalBlack.withOpacity(0.05),
                                  color: kPersonalBlue,
                                  value: 100,
                                  semanticsLabel: 'Linear progress indicator',
                                ),
                              )
                            ),
                              Padding(
                                padding: EdgeInsets.only(top: 16.0),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text('Решено 100%',style: TextStyle(color: kPersonalBlack,fontFamily: 'Formular',fontWeight: FontWeight.bold,fontSize: 11)),
                                ),
                              )
                          ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2.5,
                              offset: Offset(-1, 0), // changes position of shadow
                            ),

                          ],
                        ),
                      ));
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}

void main(){
  runApp(MaterialApp(home:IntroductorySchoolScreen()));
}