import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class ResetPasswordScreen extends StatefulWidget {

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {

  String email;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 34,vertical: 69),
        child: Form(
          key: formKey,
          child: Column(
            children: [

              customText(title:"Reset Password",style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold) ),
              SizedBox(
                height: 17,
              ),
              customText(title: 'Please enter your email to receive a\nlink to  create a new password via email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),align: TextAlign.center)

              ,SizedBox(
                height: 61,
              ),
              myTextFiled(
                hintText: 'Email',
                validator: (String input){
                  if(input.isEmpty){
                    return 'Required';
                  }

                  if(!input.contains('@')){
                    return 'Invalid';
                  }
                  return null;
                },
                onSaved: (String input){
                  email = input;
                }

              ),
              SizedBox(
                height: 34,
              ),
              myStadiumButton(onTap: (){
                if(formKey.currentState.validate()){
                  /// Validate true
                  formKey.currentState.save();
                  FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((value){
                    print("Code sent");
                  }).catchError((e){
                    print(e);
                  });
                }else{
                  ///Failed
                }
              }
              ,title: 'Send')
            ],
          ),
        ),
      ),
    );
  }
}
