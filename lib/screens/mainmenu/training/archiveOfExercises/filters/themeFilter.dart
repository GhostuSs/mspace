import 'package:flutter/material.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:flutter/cupertino.dart';

class ThemeFilterScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ThemeFilterScreen();
  }
}
class _ThemeFilterScreen extends State<ThemeFilterScreen>{

  var _selectedItems = List<int>();
  var _colors = List.generate(6, (index) => 0);
  var _themes = ['Комбинаторика','Вычисления','Квадратные уравнения','Дроби','Анализ числа','Логика'];
  @override

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
                    IconButton(icon: Icon(Icons.arrow_back_ios,size: 28,), onPressed: (){setState(() {
                      Navigator.pushNamed(context, '/info');
                    });}),
                    Align(alignment: Alignment.center,child: Text(
                      'Тема',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Formular',
                          fontSize: 30,
                          color: kPersonalBlack
                      ),
                    ),),
                  ],
                )
            ),
            buildSchoolsList(_selectedItems,_colors),
            Stack(children: [
              Align(
                alignment: Alignment.center,
                child:  Padding(
                    padding: EdgeInsets.only(top:10.0),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width*0.95,
                      child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                          child: Text(
                              'применить'.toUpperCase(),
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
                    )),
              )
            ],)
          ],
        ),
      ),
    );
  }
  Widget buildSchoolsList(List<int> _selectedItems, List<int> _colors){
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      child: Center(child: ListView.builder(
          itemCount:6,
          itemBuilder: (BuildContext context,index){
            return ListTile(
              minLeadingWidth: 3,
              leading: _selectedItems.contains(index) ? Padding(padding: EdgeInsets.fromLTRB(0, 4, 0, 6),child: Icon(Icons.circle,size: 10,color: kPersonalBlue)) : Text(""),
              title: Text(
                  "${_themes[index]}",
                  style: TextStyle(
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: _colors[index]==1 ? kPersonalBlue : kPersonalBlack.withOpacity(0.4)
                  )
              ),
              onTap: (){
                setState(() {
                  _colors[index]==0 ? _colors[index]=1 : _colors[index]=0;
                  if(! _selectedItems.contains(index)){
                    _selectedItems.add(index);
                  } else {
                    _selectedItems.removeWhere((val) => val == index);
                  }
                  print(_selectedItems);
                });
              },

            );
          })),
    );
  }
}
void main(){
  runApp(MaterialApp(home: ThemeFilterScreen()));
}
