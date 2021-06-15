import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/material.dart';

class IntroductoryClassScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TrainingScreen();
  }
}

class _TrainingScreen extends State<IntroductoryClassScreen>{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, height*0.1, 20, 0),
        child:  Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Вступительная работа',
                      style: TextStyle(
                          fontFamily:'Formular',
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                          color: kPersonalBlack
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 80),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RawBtn('5 класс', '/recommend'),
                    RawBtn('6 класс', '/recommend'),
                    RawBtn('7 класс', '/recommend'),
                    RawBtn('8 класс', '/recommend'),
                    RawBtn('9 класс', '/recommend'),
                    RawBtn('10 класс', '/recommend'),
                  ],
              )

            ],
          ),
        ),
      ),
    );
  }
  Widget RawBtn(String title,String route){
    return Padding(
        padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
        child: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.pushNamed(context, route);
                });
              },
              child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      color: kPersonalWhite,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Formular'
                  )
              ),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ))),
        ));
  }
}
void main()=>runApp(MaterialApp(home: IntroductoryClassScreen()));