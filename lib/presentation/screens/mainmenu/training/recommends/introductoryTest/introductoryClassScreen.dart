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
                  IconButton(icon: Icon(Icons.arrow_back_ios),iconSize: 26, onPressed: (){setState(() {
                    Navigator.pushNamed(context, '/training');
                  });
                  }),
                  Align(alignment: Alignment.bottomCenter,child:
                  Padding(
                    padding: EdgeInsets.only(top: 9),
                    child: Text(
                      'Вступительная работа',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular',
                          fontSize: 26,
                          color: kPersonalBlack
                      ),
                    ),
                  ))
                ],
              ),
              SizedBox(height: 80),
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RawBtn('5 класс', '/introschoolyear'),
                    RawBtn('6 класс', '/introschoolyear'),
                    RawBtn('7 класс', '/introschoolyear'),
                    RawBtn('8 класс', '/introschoolyear'),
                    RawBtn('9 класс', '/introschoolyear'),
                    RawBtn('10 класс', '/introschoolyear'),
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