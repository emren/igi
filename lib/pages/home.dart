import 'package:flutter/material.dart';
import 'package:igi/pages/alarm.dart';
import 'package:igi/pages/profil.dart';
import 'package:igi/pages/pusula.dart';
import 'package:igi/services/size_config.dart';

import 'anasayfa.dart';
import 'ekle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;

  final List<Widget> _children = [
    AnaSayfa(),
    Pusula(),
    Ekle(),
    Alarm(),
    Profil(),
  ];

  bool _isAnasayfaSelected = true;
  bool _isPusulaSelected = false;
  bool _isEkleSelected = false;
  bool _isAlarmSelected = false;
  bool _isProfilSelected = false;

  void onTabTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: _children[_currentindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0), topRight: Radius.circular(0)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white10,
          onTap: onTabTapped,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: _isAnasayfaSelected
                    ? Image.asset(
                  'assets/icons/home_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                )
                    : Image.asset(
                  'assets/icons/home_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  setState(() {
                    _currentindex = 0;
                    _isAnasayfaSelected = true;
                    _isPusulaSelected = false;
                    _isEkleSelected = false;
                    _isAlarmSelected = false;
                    _isProfilSelected = false;
                  });
                },
              ),
              title: Text(
                '',
                style: TextStyle(height: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: _isPusulaSelected
                    ? Image.asset(
                  'assets/icons/compass_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                )
                    : Image.asset(
                  'assets/icons/compass_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  setState(() {
                    _currentindex = 1;
                    _isAnasayfaSelected = false;
                    _isPusulaSelected = true;
                    _isEkleSelected = false;
                    _isAlarmSelected = false;
                    _isProfilSelected = false;
                  });
                },
              ),
              title: Text(
                '',
                style: TextStyle(height: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: _isEkleSelected
                    ? Image.asset(
                  'assets/icons/add_icon_light.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                )
                    : Image.asset(
                  'assets/icons/add_icon_light.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  setState(() {
                    _currentindex = 2;
                    _isAnasayfaSelected = false;
                    _isPusulaSelected = false;
                    _isEkleSelected = true;
                    _isAlarmSelected = false;
                    _isProfilSelected = false;
                  });
                },
              ),
              title: Text(
                '',
                style: TextStyle(height: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: _isAlarmSelected
                    ? Image.asset(
                  'assets/icons/notification_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                )
                    : Image.asset(
                  'assets/icons/notification_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  setState(() {
                    _currentindex = 3;
                    _isAnasayfaSelected = false;
                    _isPusulaSelected = false;
                    _isEkleSelected = false;
                    _isAlarmSelected = true;
                    _isProfilSelected = false;
                  });
                },
              ),
              title: Text(
                '',
                style: TextStyle(height: 0),
              ),
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: _isProfilSelected
                    ? Image.asset(
                  'assets/icons/profile_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                )
                    : Image.asset(
                  'assets/icons/profile_icon_dark.png',
                  //height: 30,
                  height: 3.35 * SizeConfig.heightMultiplier,
                ),
                onPressed: () {
                  setState(() {
                    _currentindex = 4;
                    _isAnasayfaSelected = false;
                    _isPusulaSelected = false;
                    _isEkleSelected = false;
                    _isAlarmSelected = false;
                    _isProfilSelected = true;
                  });
                },
              ),
              title: Text(
                '',
                style: TextStyle(height: 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
