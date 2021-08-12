import 'package:enroll_spb_luxury/presentation/components/centerTitleAndBackBtn.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChooseSchoolsScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ChooseSchoolsScreen();
  }
}

class _ChooseSchoolsScreen extends State<ChooseSchoolsScreen>{
  var _selectedItems = List<int>();
  var _colors = List.generate(10, (index) => 0);
  var schools=["Аничков лицей","Физико-математический лицей №30","Академическая гимназия № 56","Физико-техническая школа","Лицей № 533","Президентский физико-математический лицей №239"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 80),child:
                centerTitleWithBack(context)
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0),child:Text(
                  'Выберите заведение поступления',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      fontFamily: 'Formular'
                  ),
                )),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:buildSchoolsList(_selectedItems,_colors,schools)),
                Padding(padding: EdgeInsets.fromLTRB(0,20,0,0),child: Container(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            //context.read<User>().enrollSchools.
                            for(var item in _selectedItems){
                              context.read<User>().enrollSchools.add(schools[item]);
                              Navigator.pushNamed(context, "/info");
                            }
                          });
                        },
                        child: Text(
                            "Продолжить",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: 'Formular')
                        ),
                        style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )
                            ))) ))
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget buildSchoolsList(List<int> _selectedItems, List<int> _colors, List schools){
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Container(
      height: MediaQuery.of(context).size.height*0.3,
      child: Center(child: Scrollbar(
        interactive: true,
        child: ListView.builder(
            itemCount: schools.length,
            itemBuilder: (BuildContext context,index){
              return ListTile(
                  minLeadingWidth: 3,
                  leading: _selectedItems.contains(index) ? Padding(padding: EdgeInsets.fromLTRB(0, 4, 0, 6),child: Icon(Icons.circle,size: 10,color: kPersonalBlue)) : Text(""),
                  title: Text("${schools[index]}",style: TextStyle(fontFamily: 'Formular',fontWeight: FontWeight.bold,color: _colors[index]==1 ? kPersonalBlue : kPersonalBlack.withOpacity(0.4))),
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
                  }
              );
            }),

      )
      ),
    ));
  }
}