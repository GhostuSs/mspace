import 'package:enroll_spb_luxury/presentation/components/centerTitleAndBackBtn.dart';
import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddNameScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AddNameScreen();
  }
}

class _AddNameScreen extends State<AddNameScreen>{
  var nameFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 40),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 80),
                    child: centerTitleWithBack(context)
                ),
                Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20), child:Text(
                  'Введите имя ученика',
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold
                  ),
                )),
                Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:buildNameTextField()),
                Padding(padding: EdgeInsets.fromLTRB(0,20,0,0),child: Container(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/chooseclass');
                      },
                      child: Text(
                          "продолжить".toUpperCase(),
                          style: TextStyle(fontSize: 16,fontFamily: 'Formular',fontWeight: FontWeight.bold)
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )
                          ))) ,),)
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget buildNameTextField() {
    return TextField(
      controller: nameFieldController,
      autofocus: false,
      cursorColor: kPersonalBlack,
      decoration: InputDecoration(
        labelText: 'имя',
        focusColor: kPersonalBlack,
      ),
      onChanged: (String s){
        context
            .read<User>().name
             = nameFieldController.text;
      },
      onEditingComplete: (){
        if(nameFieldController.text.isNotEmpty) {
          context
              .read<User>()
              .name = nameFieldController.text;
        }
      },
    );
  }
}