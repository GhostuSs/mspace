import 'package:enroll_spb_luxury/presentation/components/centerTitleAndBackBtn.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseEnrollClassScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ChooseEnrollClassScreen();
  }
}

class _ChooseEnrollClassScreen extends State<ChooseEnrollClassScreen>{
  int enrollClass=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
        child: Column(
          children: [
            centerTitleWithBack(context),
            SizedBox(height:60),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child:Text(
                'Выберите класс, в который поступаете',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Formular'
                ),
              ),),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:buildClassEditField()),
            Padding(padding: EdgeInsets.fromLTRB(0,20,0,0),child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      context.read<User>().enrollClass=enrollClass;
                      Navigator.pushNamed(context, '/chooseschools');
                    });
                  },
                  child: Text(
                      "продолжить".toUpperCase(),
                      style: TextStyle(fontSize: 16,fontFamily: 'Formular')
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
            if(enrollClass>=2) enrollClass--;
          });
        }),
        Padding(
          padding: EdgeInsets.fromLTRB(20,0,20,0),
          child: Text(
            '$enrollClass',
            style: TextStyle(
                color: kPersonalBlack,
                fontFamily: 'Formular',
                fontSize: fontSize,
                fontWeight: FontWeight.bold
            ),
          ),),
        IconButton(icon: Icon(Icons.add),
            iconSize: iconsSize,
            onPressed: (){
              setState(() {
                if(enrollClass<=10) enrollClass++;
              });
            })
      ],
    );
  }
}