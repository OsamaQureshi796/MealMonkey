import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

import 'LoginScreen.dart';

class DecisionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [

              Container(
                width: double.infinity,
                height: 382,
                decoration: BoxDecoration(
                  color: AppColors.orangeColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 10,
                      blurRadius: 10
                    )
                  ],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(17),bottomRight: Radius.circular(17)),
                  image: DecorationImage(
                    image: AssetImage('assets/card.png'),
                    fit: BoxFit.cover,
                  )
                ),
              ),

              SizedBox(
                height: 80,
              ),

              myRichText(),
              myText(),


              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child:myStadiumButton(
                  title: 'Login',
                  onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (ctx)=>LoginScreen()));

                  }
                )
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Container(
                  width: double.infinity,
                  height: 56,
                  child: OutlineButton(
                    disabledBorderColor: AppColors.orangeColor,
                    borderSide: BorderSide(color: AppColors.orangeColor),
                    shape: StadiumBorder(
                      side: BorderSide(color: AppColors.orangeColor)
                    ),
                    onPressed: (){},child: Text("Create an account",style: TextStyle(color: AppColors.orangeColor),),color: AppColors.orangeColor,),
                ),
              ),


            ],
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(top: 60),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 10,
                        blurRadius: 10
                    )
                  ],
                image: DecorationImage(
                  image: AssetImage('assets/face.png')
                )
              ),

            ),
          )


        ],
      ),
    );
  }
}
