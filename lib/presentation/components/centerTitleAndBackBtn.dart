import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget centerTitleWithBack(BuildContext context){
  return Stack(
      children: [
        IconButton(onPressed:(){
          Navigator.pushNamed(context, '/auth');
        }, icon: Icon(Icons.arrow_back_ios,color: kPersonalBlack,size: 30)),
        Center(child: Text(
            'M-space',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Formular',
                fontSize: 38,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid)
        )),
      ]
  );
}