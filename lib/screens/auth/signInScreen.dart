import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SignUpScreen();
  }
}

class _SignUpScreen extends State<SignUpScreen>{
  bool _showPass = false;
  var loginFieldController = TextEditingController();
  var passFieldController = TextEditingController();
  double left = 20;
  double right = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
        child: Center(child:
        Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(left-10, 0, right, 0),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [IconButton(icon: Icon(Icons.arrow_back_ios_outlined),
                color: kPersonalBlue,
                onPressed:(){setState(() {
                  Navigator.pop(context);
                });})],)),
            Padding(padding: EdgeInsets.fromLTRB(left, 0, right, 60),child: Row(mainAxisAlignment: MainAxisAlignment.start,children: [Text(
                'M-space',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Formular',
                    fontSize: 30,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid)
            )])),
            Padding(padding: EdgeInsets.fromLTRB(left, 40, right, 50),child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Введите логин и пароль",
                  style: TextStyle(
                      color: kPersonalBlack,
                      fontSize: 22,
                      fontFamily: 'Formular',
                      fontWeight: FontWeight.bold
                  )
                  ,
                )],)),
            Padding(padding: EdgeInsets.fromLTRB(left, 0, right, 20),child:buildloginTextField()),
            Padding(padding: EdgeInsets.fromLTRB(left, 0, right, 10),child:buildPasswordTextField()),
            Padding(padding: EdgeInsets.fromLTRB(left,40,right,20),child: Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(loginFieldController.text.isNotEmpty) {
                      context
                          .read<User>()
                          .login = loginFieldController.text;
                      if(passFieldController.text.isNotEmpty) {
                        context
                            .read<User>()
                            .password = passFieldController.text;
                        Navigator.pop(context);
                      }else{passFieldController.clear();}
                    }
                  });
                },
                  child: Text(
                      "зарегистрироваться".toUpperCase(),
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
                      ))) ,),)
          ],
        )),
      ),
    );
  }
  Widget buildPasswordTextField(){
    return TextField(
      obscureText: !_showPass,
      controller: passFieldController,
      autofocus: false,
      cursorColor: kPersonalBlack,
      decoration: InputDecoration(
        labelText: 'password',
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
  Widget buildloginTextField(){
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