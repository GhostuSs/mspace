import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _AuthScreen();
  }
}

class _AuthScreen extends State<AuthScreen>{
  bool _showPass = false;
  var loginFieldController = TextEditingController();
  var passFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 20, 40),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0,0, 0, 190),child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'M-space',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Formular',
                        fontSize: 30,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid)
                ),
                TextButton(
                  onPressed:(){Navigator.pushNamed(context, "/signup");},
                  child:
                  Text(
                    "Регистрация",
                    style:
                    TextStyle(color: kPersonalBlue,fontFamily: 'Formular',fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
              ]
            )
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20),child:buildLoginTextField()),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 10),child:buildPasswordTextField()),
            Padding(padding: EdgeInsets.fromLTRB(0,40,0,0),child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  context.read<User>().checkAccess(loginFieldController.text, passFieldController.text);
                  if(context.read<User>().token){
                    Navigator.pushNamed(context, '/addname');
                  }else{
                    passFieldController.clear();
                  }
                },
                  child: Text(
                      "вход".toUpperCase(),
                      style: TextStyle(fontSize: 16,fontFamily: 'Formular',fontWeight: FontWeight.bold)
                  ),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(kPersonalBlue),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                          )
                      )))
            ))
          ],
        ),
      ),
    );
  }
  Widget buildPasswordTextField() {
    return TextField(
      obscureText: !_showPass,
      controller: passFieldController,
      autofocus: false,
      cursorColor: kPersonalBlack,
      decoration: InputDecoration(
        labelText: 'пароль',
        focusColor: kPersonalBlack,
        suffixIcon: IconButton(
          onPressed: () {
            setState(()=>_showPass = !_showPass);
          },
          icon: Icon(
            Icons.remove_red_eye,
            color: _showPass ? Colors.grey : kPersonalBlack,
          ),
        ),
      ),
    );
  }
  Widget buildLoginTextField() {
    return TextField(
      controller: loginFieldController,
      autofocus: false,
      cursorColor: kPersonalBlack,
      decoration: InputDecoration(
        labelText: 'логин',
        focusColor: kPersonalBlack,
      ),
    );
  }
}