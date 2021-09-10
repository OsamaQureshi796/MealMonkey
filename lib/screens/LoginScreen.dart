import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/OTPScreen.dart';
import 'package:monkey_meal/screens/resetPasswordScreen.dart';
import 'package:monkey_meal/screens/signupScreen.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 34),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 69,
              ),
              Text(
                "Login",
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
              myStadiumButton(title: 'Login', onTap: () {}),
              SizedBox(
                height: 28,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=> ResetPasswordScreen()));
                  },
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(color: Colors.black45),
                  )),
              SizedBox(
                height: 54,
              ),

              Text('or Login With'),
              SizedBox(
                height: 28,
              ),

              myStadiumIconButton(
                title: 'Login with facebook',
                icon: Icons.face,
                color: Colors.blue,
                onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>VerificationScreen()));
                }
              ),

              SizedBox(
                height: 28,
              ),

              myStadiumIconButton(
                  title: 'Login with Google',
                  icon: Icons.golf_course,
                  color: Colors.red,
                  onTap: (){}
              ),
              SizedBox(
                height: 28,
              ),

              InkWell(
                onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUpScreen()));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account"),

                    Text("Signup",style: TextStyle(color: AppColors.orangeColor),)

                  ],
                ),
              ),

              SizedBox(
                height: 28,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
