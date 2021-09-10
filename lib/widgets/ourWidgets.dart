import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkey_meal/utils/AppColors.dart';

Widget myRichText({String title1 = 'Meal ',String title2 = 'Monkey'}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: title1,
        style: TextStyle(
          color: AppColors.orangeColor,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        )),
    TextSpan(
        text: title2,
        style: TextStyle(
            color: AppColors.lightBlackColor,
            fontSize: 34,
            fontWeight: FontWeight.bold)),
  ]));
}


Widget myRichTextChangeDirection({String title1 = 'Meal ',String title2 = 'Monkey',}) {
  return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: title1,
            style: TextStyle(
              color: AppColors.lightBlackColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        TextSpan(
            text: title2,
            style: TextStyle(
                color: AppColors.orangeColor,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ]));
}


Widget myText() {
  return Text(
    "Food Delivery",
    style: GoogleFonts.poppins(fontSize: 10, letterSpacing: 5),
  );
}

Widget customText({String title,TextStyle style,TextAlign align}){
  return Text(title,style: style,textAlign: align,);
}

Widget myStadiumButton({String title, Function onTap}) {
  return MaterialButton(
    height: 56,
    shape: StadiumBorder(),
    minWidth: double.infinity,
    onPressed: onTap,
    child: Text(
      title,

      style: TextStyle(color: Colors.white),
    ),
    color: AppColors.orangeColor,
  );
}

Widget myStadiumIconButton({String title, Function onTap,IconData icon,Color color}) {
  return MaterialButton(
    height: 56,
    shape: StadiumBorder(),
    minWidth: double.infinity,
    onPressed: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        Icon(icon,color: Colors.white,),

        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    color: color,
  );
}

Widget myTextFiled({String hintText}) {
  return TextField(
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.symmetric(horizontal: 0),
      filled: true,
      fillColor: AppColors.lightGreyColor,
      hintText: hintText,
      hintStyle: TextStyle(color: AppColors.hintColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
    ),
  );
}

Widget myTextFiledWithIcon({String hintText,IconData icon}) {
  return TextField(
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.symmetric(horizontal: 0),
      filled: true,
      fillColor: AppColors.lightGreyColor,
      hintText: hintText,
      prefixIcon: Icon(icon),
      hintStyle: TextStyle(color: AppColors.hintColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
    ),
  );
}
