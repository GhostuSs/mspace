import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProfileScreen();
  }
}
class _ProfileScreen extends State<ProfileScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Профиль',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Formular',
                      fontSize: 30,
                      color: kPersonalBlack
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 30)),
              ],
            )
          ],
        ),
      ),
    );
  }

}