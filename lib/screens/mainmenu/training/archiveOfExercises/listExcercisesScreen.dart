import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var name = 'Дмитрий';
var surname = 'Смирных';
var email = 'example@mail.com';

class ExcercisesScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExcersisesScreen();
  }
}
class _ExcersisesScreen extends State<ExcercisesScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Stack(
              children: [
                Align(alignment: Alignment.bottomCenter,child: Text(
                  'Профиль',
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
                            child: Text(
                                '$name $surname',
                                style:
                                TextStyle(
                                    fontFamily: 'Formular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)
                            )
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child:Padding(
                            padding: EdgeInsets.fromLTRB(20, 3, 0, 10),
                            child: Text(
                                email,
                                style:
                                TextStyle(
                                    color:kPersonalBlack.withOpacity(0.45) ,
                                    fontFamily: 'Formular',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)
                            )
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: kPersonalBlue,
                        child: Text('ДС'),),),
                  )
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
              child: TextButton(onPressed: (){}, child: Text(
                  'О приложении',
                  style:
                  TextStyle(
                      color:kPersonalBlack,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
              )),),
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,0),
              child: TextButton(onPressed: (){}, child: Text(
                  'Служба поддержки',
                  style:
                  TextStyle(
                      color:kPersonalBlack,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
              )),)
          ],
        ),
      ),
    );
  }

}