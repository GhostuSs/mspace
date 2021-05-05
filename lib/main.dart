import 'package:enroll_spb_luxury/screens/MainMenu.dart';
import 'package:enroll_spb_luxury/screens/addNameScreen.dart';
import 'package:enroll_spb_luxury/screens/authScreen.dart';
import 'package:enroll_spb_luxury/screens/chooseClassScreen.dart';
import 'package:enroll_spb_luxury/screens/chooseEnrollClassScreen.dart';
import 'package:enroll_spb_luxury/screens/chooseSchoolsScreen.dart';
import 'package:enroll_spb_luxury/screens/signInScreen.dart';
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
