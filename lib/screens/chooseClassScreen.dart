import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseClassScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ChooseClassScreen();
  }
}

class _ChooseClassScreen extends State<ChooseClassScreen>{
  int actualClass=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'M-space',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Formular',
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid)
                ),
              ],),
            SizedBox(height:60),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child:Text(
                'Выберите текущий класс',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Formular',
                    fontWeight:FontWeight.bold
                ),
              ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:buildClassEditField()),
            Padding(padding: EdgeInsets.fromLTRB(0,20,0,0),child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      context.read<User>().actualClass=actualClass;
                      Navigator.pushNamed(context, '/enrollclass');
                    });
                  },
                  child: Text(
                      "продолжить".toUpperCase(),
                      style: TextStyle(fontSize: 16,fontFamily: 'Formular',fontWeight: FontWeight.bold)
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                          )
                      ))) ,),)


          ],
        ),
      ),
    );
  }
  Widget buildClassEditField() {
    double iconsSize=70;
    double fontSize=80;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(icon: Icon(Icons.remove),iconSize: iconsSize, onPressed: (){
          setState(() {
            if(actualClass>=2) actualClass--;
          });
        }),
        Padding(
          padding: EdgeInsets.fromLTRB(20,0,20,0),
          child: Text(
          '$actualClass',
          style: TextStyle(
            color: kPersonalBlack.withOpacity(0.4),
              fontFamily: 'Formular',
              fontSize: fontSize,
              fontWeight: FontWeight.bold
          ),
        ),),
            IconButton(icon: Icon(Icons.add),
                iconSize: iconsSize,
                onPressed: (){
                  setState(() {
                    if(actualClass<=10) actualClass++;
                  });
                })
      ],
    );
  }
}