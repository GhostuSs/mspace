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
      body:
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Stack(
                        children: [
                          IconButton(onPressed:(){
                              Navigator.pop(context);
                            }, icon: Icon(Icons.arrow_back_ios,color: kPersonalBlack,size: 30,)),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                          child: Center(child: Text(
                              'Изменить профиль',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Formular',
                                  fontSize: 28,
                                  decorationStyle: TextDecorationStyle.solid)
                          ))
                          ),
                        ]
                    )
                ),
                rawTextBtn('Как к вам обращаться'),
                rawTextBtn('Ваше фото'),
                rawTextBtn('Почта'),
                rawTextBtn('Текущий класс'),
                rawTextBtn('Класс поступления'),
                rawTextBtn('Школа поступления'),
                Spacer(),
                Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
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
                          )),
                    ))
              ],
            ),
          )
    );
  }
Widget rawTextBtn(String title){
 return Padding(
   padding: EdgeInsets.fromLTRB(20,10,0,0),
   child: TextButton(onPressed: (){}, child: Text(
       title,
       style:
       TextStyle(
           color:kPersonalBlack,
           fontFamily: 'Formular',
           fontWeight: FontWeight.bold,
           fontSize: 20)
   )),);
}
}
void main(){
  runApp(MaterialApp(home: EditProfileScreen()));
}