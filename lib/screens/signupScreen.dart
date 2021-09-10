import 'package:flutter/material.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [

                SizedBox(
                  height: 69,
                ),
                Text(
                  "Signup",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Add your details here'),
                SizedBox(
                  height: 37,
                ),
                myTextFiled(hintText: 'Your Email'),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(hintText: 'Password'),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(hintText: 'Your Email'),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(hintText: 'Password'),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(hintText: 'Your Email'),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(hintText: 'Password'),
                SizedBox(
                  height: 28,
                ),

                myStadiumButton(
                  title: 'Signup',
                  onTap: (){}
                ),

                SizedBox(
                  height: 28,
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
