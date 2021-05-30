import 'package:enroll_spb_luxury/screens/mainmenu/MainMenu.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/addNameScreen.dart';
import 'package:enroll_spb_luxury/screens/auth/authScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseClassScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseEnrollClassScreen.dart';
import 'package:enroll_spb_luxury/screens/insertuserdata/chooseSchoolsScreen.dart';
import 'package:enroll_spb_luxury/screens/auth/signInScreen.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/profile/Profile.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/Recommends/RecommendsScreen.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/States.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/profile/editProfile.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/TrainingScreen.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/Recommends/fullAnswerScreen.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/archiveOfExercises/filters/classFilter.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/archiveOfExercises/filters/themeFilter.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/training/archiveOfExercises/listExcercisesScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/answerScreen.dart';
import 'data/passData.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<User>(create: (_) => User()),
      ],
      child:MaterialApp(
        initialRoute: '/auth',
        routes: {
          "/auth": (BuildContext context) => AuthScreen(),
          "/signup": (BuildContext context) => SignUpScreen(),
          "/addname": (BuildContext context) => AddNameScreen(),
          "/chooseclass": (BuildContext context) => ChooseClassScreen(),
          "/enrollclass": (BuildContext context) => ChooseEnrollClassScreen(),
          "/chooseschools": (BuildContext context) => ChooseSchoolsScreen(),
          "/info": (BuildContext context) => MainMenuScreen(),
          "/states": (BuildContext context) => StatesScreen(),
          "/recommend": (BuildContext context) => RecommendsScreen(),
          '/editprofile': (BuildContext context) => EditProfileScreen(),
          "/profile": (BuildContext context) => ProfileScreen(),
          "/answer": (BuildContext context) => AnswerScreen(),
          "/training":(BuildContext context) => TrainingScreen(),
          "/fullanswer":(BuildContext context) => FullAnswerScreen(),
          "/archive":(BuildContext context) => ExcercisesScreen(),
          "/filterclass":(BuildContext context) => ClassFilterScreen(),
          "/filtertheme":(BuildContext context) => ThemeFilterScreen(),

        },
      ),
    )
  );
}
