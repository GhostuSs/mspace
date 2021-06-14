import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';

class ExcercisesScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExcersisesScreen();
  }
}
class _ExcersisesScreen extends State<ExcercisesScreen>{
  String exercise = "С января по июнь 46200 иммигрантов подали на гражданство. А в прошлом году за этот же период заявки подали 120000 иммигрантов. На сколько процентов уменьшилось количество заявок? В ответе укажите только число.";
  @override
  Widget build(BuildContext context) {
    const label = "Поиск";
    const dummyList = ['1111'];
    var height = MediaQuery.of(context).size.height;
    TextEditingController myController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Stack(
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios),iconSize: 28, onPressed: (){setState(() {
                  Navigator.pushNamed(context, '/info');
                });}),
                Align(alignment: Alignment.bottomCenter,child: Text(
                  'Архив задач',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Formular',
                      fontSize: 30,
                      color: kPersonalBlack
                  ),
                ),),
                Align(alignment: Alignment.bottomRight,child: IconButton(icon: Image.asset('lib/assets/editIcon.png'), onPressed: (){
                  setState(() {
                    _showModalBottomSheet(context);
                  });
                })),
              ],
            )
            ),
            Padding(
                padding: EdgeInsets.only(top: 5.0,bottom: 0.0),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    child: TextFieldSearch(
                        initialList: dummyList,
                        label: label,
                        controller: myController
                    )
                  )
                ],)
            ), //Поисковая строка
            Container(
              height: MediaQuery.of(context).size.height*0.65,
              child: Scrollbar(
                interactive: true,
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (BuildContext context,index){
                      return Padding(padding: EdgeInsets.only(bottom: 15.0),child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                      child:
                                      Container(
                                          constraints: BoxConstraints(maxWidth: 0.9*MediaQuery.of(context).size.width),
                                          child: Padding(
                                            padding: EdgeInsets.all(10),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(top:5.0,bottom: 5.0),
                                                    child:Row(
                                                      children: [
                                                        Text(
                                                            'Задача ',
                                                            style: TextStyle(
                                                                fontFamily: 'Formular',
                                                                fontWeight: FontWeight.bold)
                                                        ),
                                                        Text(
                                                            '№1111',
                                                            style: TextStyle(
                                                                fontFamily: 'Formular',
                                                                fontWeight: FontWeight.bold,
                                                                color: kPersonalBlue)
                                                        ),

                                                      ],
                                                    )
                                                ),
                                                Padding(
                                                    padding: EdgeInsets.only(top:5.0,bottom: 5.0),
                                                    child:Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                            'Комбинаторика ',
                                                            style: TextStyle(
                                                                fontFamily: 'Formular',
                                                                fontWeight: FontWeight.bold)
                                                        ),
                                                        Text(
                                                            'класс 4,5',
                                                            style: TextStyle(
                                                                fontFamily: 'Formular',
                                                                fontWeight: FontWeight.bold,
                                                                color: kPersonalBlack.withOpacity(0.4))
                                                        ),

                                                      ],
                                                    )
                                                ),
                                                Text(
                                                    exercise,
                                                    maxLines: 20,
                                                    overflow: TextOverflow.ellipsis,
                                                    style:
                                                    TextStyle(
                                                        fontFamily: 'Formular',
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 15)
                                                )
                                              ],
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
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height*0.35,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Фильтры',
                        style: TextStyle(
                            fontFamily: 'Formular',
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(child: Text(
                        'Сбросить',
                        style:TextStyle(
                          fontFamily: 'Formular',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: kPersonalBlue
                      ),
                        ),
                      ),
                    )
                  ],
                )),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child:
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: ListTile(
                      title: Text(
                        'Класс',
                        style: TextStyle(
                            fontFamily: 'Formular',
                            fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                          children: [
                        Icon(Icons.circle,color: kPersonalBlue,size: 12),
                        Icon(Icons.arrow_right_alt,size: 30,color: kPersonalBlack),
                      ]
                      ),
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, '/filterclass');
                        });
                      },
                    ),
                  )
                ],
              )
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child:
                  Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                              'Тема',
                              style: TextStyle(
                                  fontFamily: 'Formular',
                                  fontWeight: FontWeight.bold,
                                fontSize: 20
                              )
                          ),
                          trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.circle,color: kPersonalBlue,size: 12),
                                Icon(Icons.arrow_right_alt,size: 30,color: kPersonalBlack),
                              ]
                          ),
                          onTap: (){
                            setState(() {
                              Navigator.pushNamed(context, '/filtertheme');
                            });
                          },
                        ),
                      )
                    ],
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top:10.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width*0.95,
                  child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: Text(
                          'применить'.toUpperCase(),
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
        );
      },
    );
  }

}
