import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArrayOfExercises  extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ArrayOfExercises> {
  @override
  Widget build(BuildContext context) {
  return Container(
    width: 35,
    height: 35,
    decoration: BoxDecoration(
      border: Border.all(color: kPersonalBlack)
    ),
    child: Center(
      child: Text(
          '1',
          style:TextStyle(
              color: kPersonalBlack,
              fontSize: 17,
              fontWeight: FontWeight.bold,
              fontFamily: 'Formular'
          )),
    ),
  );
  }
}
