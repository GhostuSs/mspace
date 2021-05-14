import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var name = 'Дмитрий';
var surname = 'Смирных';
var email = 'example@mail.com';

class EditProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _EditProfileScreen();
  }
}
class _EditProfileScreen extends State<EditProfileScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 100, 0, 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Stack(
                  children: [
                    Align(alignment: Alignment.topCenter,child: Text(
                      'Изменить профиль',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular',
                          fontSize: 30,
                          color: kPersonalBlack
                      ),
                    ),),
                    Align(alignment: Alignment.topLeft,child: IconButton(icon: Icon(Icons.arrow_back_ios,size:30,color: kPersonalBlack,), onPressed: (){Navigator.pop(context);})),
                  ],
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20,10,0,0),
              child: TextButton(onPressed: (){}, child: Text(
                  'Как к вам обращаться',
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
                  'Ваше фото',
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
                  'Почта',
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
                  'Текущий класс',
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
                  'Класс поступления',
                  style:
                  TextStyle(
                      color:kPersonalBlack,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
              )),),
            Padding(
              padding: EdgeInsets.fromLTRB(20,0,0,30),
              child: TextButton(onPressed: (){}, child: Text(
                  'Школа поступления',
                  style:
                  TextStyle(
                      color:kPersonalBlack,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20)
              )),),
            Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                    onPressed: (){
                      setState(() {
                        Navigator.pushNamed(context, "/auth");
                      });
                    },
                    child: Text(
                'Выйти',
                style:
                TextStyle(
                    color:Color(0xFFFE1818),
                    fontFamily: 'Formular',
                    fontWeight: FontWeight.bold,
                    fontSize: 20)
            )))
          ],
        ),
      ),
    );
  }

}
void main(){
  runApp(MaterialApp(home: EditProfileScreen()));
}