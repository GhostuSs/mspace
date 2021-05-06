import 'package:enroll_spb_luxury/screens/mainmenu/MainMenu.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/addNameScreen.dart';
import 'package:enroll_spb_luxury/screens/auth/authScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseClassScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseEnrollClassScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseSchoolsScreen.dart';
import 'package:enroll_spb_luxury/screens/auth/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/passData.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<User>(create: (_) => User()),
      ],
      child:MaterialApp(
        initialRoute: "/auth",
        routes: {
          "/auth": (BuildContext context) => AuthScreen(),
          "/signup": (BuildContext context) => SignUpScreen(),
          "/addname": (BuildContext context) => AddNameScreen(),
          "/chooseclass": (BuildContext context) => ChooseClassScreen(),
          "/enrollclass": (BuildContext context) => ChooseEnrollClassScreen(),
          "/chooseschools": (BuildContext context) => ChooseSchoolsScreen(),
          "/info": (BuildContext context) => MainMenuScreen(),
        },
      ),
    )
  );
}
