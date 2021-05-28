import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                  });
                })),
              ],
            )
            ),
          ],
        ),
      ),
    );
  }

}