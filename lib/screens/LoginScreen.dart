import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monkey_meal/controller/AuthController.dart';
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
  String email, password;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  AuthController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =  Get.put(AuthController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 34),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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
                myTextFiled(
                    hintText: 'Your Email',
                    onSaved: (String input) {
                      email = input;
                    },
                    validator: (String input) {
                      if (input.isEmpty) {
                        return 'Must required';
                      }

                      if (!input.contains('@')) {
                        return 'Invalid email';
                      }

                      return null;
                    }),
                SizedBox(
                  height: 28,
                ),
                myTextFiled(
                    hintText: 'Password',
                    validator: (String input) {
                      if (input.isEmpty) {
                        return 'Password is required';
                      }

                      if (input.length < 6) {
                        return 'Atleast 6 characters required';
                      }

                      return null;
                    },
                    onSaved: (String input) {
                      password = input;
                    }),
                SizedBox(
                  height: 28,
                ),
                Obx(()=> controller.isUserLogin.value? Center(child: CircularProgressIndicator(),) :myStadiumButton(
                    title: 'Login',
                    onTap: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();


                        controller.loginUser(email: email, password: password);
                      } else {
                        return;
                      }
                    }),),
                SizedBox(
                  height: 28,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ResetPasswordScreen()));
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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => VerificationScreen()));
                    }),
                SizedBox(
                  height: 28,
                ),
                myStadiumIconButton(
                    title: 'Login with Google',
                    icon: Icons.golf_course,
                    color: Colors.red,
                    onTap: () {
                      controller.signInWithGoogle();
                    }),
                SizedBox(
                  height: 28,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account"),
                      Text(
                        "Signup",
                        style: TextStyle(color: AppColors.orangeColor),
                      )
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
      ),
    );
  }
}
