import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroductoryTestVariantScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ExcersisesScreen();
  }
}
class _ExcersisesScreen extends State<IntroductoryTestVariantScreen>{
  List<String> listYear = ['1 вариант','2 вариант','3 вариант','4 вариант'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Stack(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios),iconSize: 26, onPressed: (){setState(() {
                      Navigator.pushNamed(context, '/introschoolyear');
                    });
                    }),
                    Align(alignment: Alignment.bottomCenter,child: Text(
                      '2010',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular',
                          fontSize: 35,
                          color: kPersonalBlack
                      ),
                    ))
                  ],
                )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.7,
              child: Scrollbar(
                interactive: true,
                child: ListView.builder(
                    itemCount: listYear.length,
                    itemBuilder: (BuildContext context,index){
                      return Padding(padding: EdgeInsets.only(bottom: 15.0),child: Container(
                        width: double.infinity,
                        child: ListTile(
                          title: Text(
                              '${listYear[index]}',
                              style: TextStyle(
                                  fontFamily: 'Formular',
                                  fontWeight: FontWeight.bold,
                                  color: kPersonalBlack,
                                  fontSize: 18
                              )
                          ),
                          trailing: IconButton(
                            onPressed: (){
                              Navigator.pushNamed(context, '/introexam');
                            },
                              icon: Icon(
                                  Icons.arrow_forward_ios,
                                  color: kPersonalBlack,
                                  size: 30)
                          ),
                          subtitle: Stack(
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: LinearProgressIndicator(
                                        minHeight: 7,
                                        backgroundColor: kPersonalBlack.withOpacity(0.05),
                                        color: kPersonalBlue,
                                        value: 100,
                                        semanticsLabel: 'Linear progress indicator',
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16.0),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text('Решено 100%',style: TextStyle(color: kPersonalBlack,fontFamily: 'Formular',fontWeight: FontWeight.bold,fontSize: 11)),
                                  ),
                                )
                              ]
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2.5,
                              offset: Offset(-1, 0), // changes position of shadow
                            ),

                          ],
                        ),
                      ));
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}