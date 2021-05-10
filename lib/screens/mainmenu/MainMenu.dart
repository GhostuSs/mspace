import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/data/passData.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/Profile.dart';
import 'package:enroll_spb_luxury/screens/mainmenu/TrainingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'States.dart';

class MainMenuScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainMenuScreen();
  }

}
class _MainMenuScreen extends State<MainMenuScreen>{
  @override
  Widget build(BuildContext context) {
    List _pages = [
      StatesScreen(),
      Text('SOON'),
      TrainingScreen(),
      Text('SOON'),
      ProfileScreen()
    ];
    return MaterialApp(home: CupertinoPageScaffold(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/newspaper.png',
                    color: kPersonalBlack),
                label: 'Статьи',
                activeIcon:Image.asset('lib/assets/newspaper.png',color: kPersonalBlue,
                )
            ), //Статьи
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/calendar.png',
                  color: kPersonalBlack,),
                label: 'Даты',
                activeIcon:Image.asset('lib/assets/calendar.png',color: kPersonalBlue,
                ) ), //Даты
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/rocket.png',
                  color: kPersonalBlack,),
                label: 'Тренировка',
                activeIcon:Image.asset('lib/assets/rocket.png',
                  color: kPersonalBlue,)
            ),//Тренировка
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/statistic.png',
                  color: kPersonalBlack,),
                label: 'Cтатистика',
                activeIcon:Image.asset('lib/assets/statistic.png',
                  color: kPersonalBlue,)
            ),//Статистика
            BottomNavigationBarItem(
                icon: Image.asset('lib/assets/profile.png',
                  color: kPersonalBlack,),
                label: 'Профиль',
                activeIcon:Image.asset('lib/assets/profile.png',
                  color: kPersonalBlue,)
            ),//Профиль
          ],
        ),
        tabBuilder: (BuildContext context,index){
          return _pages[index];
        },
      ),
    ));
  }
}

void main(){
  runApp(MainMenuScreen());
}