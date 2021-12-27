import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monkey_meal/controller/AuthController.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class SignUpScreen extends StatefulWidget {

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  String email,password,name,phone,cnic;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
AuthController authController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    authController = Get.put(AuthController());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 34),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
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
                  myTextFiled(hintText: 'Your Email',validator: (String input){
                    if(input.isEmpty){
                      return 'Enter email';
                    }

                    if(!input.contains('@')){
                      return "Invalid Email";
                    }

                    return null;
                  },onSaved: (String input){
                    email = input;
                  }),
                  SizedBox(
                    height: 28,
                  ),
                  myTextFiled(hintText: 'Password',validator: (String input){

                    if(input.isEmpty){
                      return "Password is required";
                    }

                    return null;
                  },onSaved: (String input){
                    password = input;
                  }),
                  SizedBox(
                    height: 28,
                  ),
                  myTextFiled(hintText: 'Your Name',
                    validator: (String input){

                    },
                    onSaved: (String input){
                      name = input;
                    }
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  myTextFiled(hintText: 'Phone Number',onSaved: (String input){
                    phone = input;
                  }),
                  SizedBox(
                    height: 28,
                  ),
                  myTextFiled(hintText: 'CNIC',onSaved: (String input){
                    cnic = input;
                  }),
                  SizedBox(
                    height: 28,
                  ),


                  myStadiumButton(
                    title: 'Signup',
                    onTap: (){

                      if(formKey.currentState.validate()){
                        //Success
                        formKey.currentState.save();
                        authController.createMyUser(
                          email: email,
                          password: password,
                          name: name,
                          phone: phone,
                          cnic: cnic
                        );
                      }else{
                        // Fail
                        return;
                      }
                    }
                  ),

                  SizedBox(
                    height: 28,
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
