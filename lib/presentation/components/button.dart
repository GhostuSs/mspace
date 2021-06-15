import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/material.dart';

class RawBtn extends StatelessWidget{
  final callback;
  final String label;
  RawBtn(
      this.callback,
      this.label
      );
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        child: Text(
            label,
            style: TextStyle(fontSize: 16,fontFamily: 'Formular',fontWeight: FontWeight.bold)
        ),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            )));
  }

}