import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkey_meal/screens/DecisionScreen.dart';
import 'package:monkey_meal/screens/home.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    User user = FirebaseAuth.instance.currentUser;

    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx)=>user !=null ? Dashboard() :DecisionScreen()));
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.png'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken)
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/face.png'),
            myRichText(),
            myText(),
          ],
        ),
      ),
    );
  }
}
