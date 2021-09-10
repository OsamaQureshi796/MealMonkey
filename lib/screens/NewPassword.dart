import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/OnBoarding.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';
import 'package:pinput/pin_put/pin_put.dart';

class NewPassword extends StatefulWidget {

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {

  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: AppColors.lightGreyColor,

      border: Border.all(color: Colors.black26),
      // border: Border.all(color: Colors.deepPurpleAccent),
      borderRadius: BorderRadius.circular(5.0),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _pinPutController.text = '****';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 34),
        child: Column(
          children: [
            SizedBox(
              height: 73,
            ),
            customText(title:"New Password",style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold) ),
            SizedBox(
              height: 17,
            ),
            customText(title: 'Please enter your email to receive a\nlink to  create a new password via email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),align: TextAlign.center)
            ,
            SizedBox(
              height: 20,
            ),
            myTextFiled(
              hintText: 'New Password'
            ),

            SizedBox(
              height: 20,
            ),

            myTextFiled(
              hintText: 'Confirm Password'
            ),


            SizedBox(
              height: 20,
            ),

            myStadiumButton(title: 'Next',onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (ctx)=>OnBoardingScreenHa()));

            }),



          ],
        ),
      ),
    );
  }


  void _showSnackBar(String pin, BuildContext context) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 3),
      content: Container(
        height: 80.0,
        child: Center(
          child: Text(
            'Pin Submitted. Value: $pin',
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
      backgroundColor: Colors.deepPurpleAccent,
    );
    Scaffold.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}


