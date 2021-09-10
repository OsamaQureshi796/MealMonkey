import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class ResetPasswordScreen extends StatefulWidget {

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 34,vertical: 69),
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
              hintText: 'Email'
            ),
            SizedBox(
              height: 34,
            ),
            myStadiumButton(onTap: (){},title: 'Send')
          ],
        ),
      ),
    );
  }
}
