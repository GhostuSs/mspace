import 'package:enroll_spb_luxury/constants/colorsPallette.dart';
import 'package:enroll_spb_luxury/presentation/screens/mainmenu/profile/Profile.dart';
import 'package:enroll_spb_luxury/presentation/screens/mainmenu/training/TrainingScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'states/States.dart';

class MainMenuScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainMenuScreen();
  }

}
class _MainMenuScreen extends State<MainMenuScreen>{
  @override
  Widget build(BuildContext context) {
    List _routes = [
      StatesScreen(),
      Text('SOON'),
      TrainingScreen(),
      Text('SOON'),
      ProfileScreen()
    ];
    return CupertinoPageScaffold(
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
                icon: Image.asset('lib/assets/editIcon.png',
                  color: kPersonalBlack,),
                label: 'Даты',
                activeIcon:Image.asset('lib/assets/dates.png',color: kPersonalBlue,
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
        // ignore: missing_return
        tabBuilder: (BuildContext context,index){
              return _routes[index];
        },
      ));
  }
}