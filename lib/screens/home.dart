import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/DashboardScreens/DashboardHomeScreen.dart';
import 'package:monkey_meal/utils/AppColors.dart';

import 'DashboardScreens/menuScreen.dart';
import 'DashboardScreens/offers.dart';

class Dashboard extends StatefulWidget {

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  List<IconData> iconList = [
    Icons.menu,
    Icons.local_offer_outlined,
    Icons.person,
    Icons.more
  ];

  int _bottomNavIndex=0;
                          //0         //1         //2         //3         //4
  List<Widget> screens = [MenuScreen(),DealScreen(),Container(),Container(),DashboardHomeScreen()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGreyColor,
        body: screens[_bottomNavIndex],
        floatingActionButton: FloatingActionButton(
          //params
          backgroundColor: AppColors.orangeColor,
          child: Icon(Icons.home,),
          onPressed: (){
            setState(() {
              _bottomNavIndex = 4;
            });
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(

          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          activeColor: AppColors.orangeColor,
          inactiveColor: Colors.grey,
          notchSmoothness: NotchSmoothness.defaultEdge,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
