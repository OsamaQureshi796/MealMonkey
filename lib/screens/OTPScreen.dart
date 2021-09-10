import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/NewPassword.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerificationScreen extends StatefulWidget {

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {

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
            customText(title:"Reset Password",style:TextStyle(color:Colors.black,fontSize: 30,fontWeight: FontWeight.bold) ),
            SizedBox(
              height: 17,
            ),
            customText(title: 'Please enter your email to receive a\nlink to  create a new password via email',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),align: TextAlign.center)
,
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              child: PinPut(
                fieldsCount: 4,
                onSubmit: (String pin) => _showSnackBar(pin, context),
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,

                submittedFieldDecoration: _pinPutDecoration,
                selectedFieldDecoration: _pinPutDecoration,
                followingFieldDecoration: _pinPutDecoration,

              ),
            ),
            SizedBox(
              height: 20,
            ),

            myStadiumButton(title: 'Next',onTap: (){}),

            SizedBox(
              height: 20,
            ),

            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=>NewPassword()));
              },
              child: myRichTextChangeDirection(
              title1: "Didn't Receive?",
                title2: 'Click Here'
              ),
            )
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


