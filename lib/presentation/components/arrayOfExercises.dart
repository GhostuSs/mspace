import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrayOfExercises  extends StatefulWidget {
  @override
  Task createState() => Task();
}

class Task extends State<ArrayOfExercises> {
  int index=1;
  List<Widget> rowList = List.generate(10, (index) => (Container(
    width: 35,
    height: 35,
    decoration: BoxDecoration(
        border: Border.all(color: kPersonalBlack)
    ),
    child: Center(
      child: Text(
          '${index+1}',
          style:TextStyle(
              color: kPersonalBlack,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Formular'
          )),
    ),
  )));
  List<Widget> secRowList = List.generate(10, (index) => (Container(
    width: 35,
    height: 35,
    decoration: BoxDecoration(
        border: Border.all(color: kPersonalBlack)
    ),
    child: Center(
      child: Text(
          '${index+11}',
          style:TextStyle(
              color: kPersonalBlack,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Formular'
          )),
    ),
  )));

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 10,bottom: 10),
    child: Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children:
            rowList,
          ),
          Row(
            mainAxisSize:MainAxisSize.min,
            children: secRowList,
          )
        ],
      ),
    ));
  }
}
