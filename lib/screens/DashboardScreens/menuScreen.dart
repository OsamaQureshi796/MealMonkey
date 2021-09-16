import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

import 'DesertScreen.dart';

class MenuScreen extends StatefulWidget {

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,

        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(title: "Menu",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                  Icon(Icons.shopping_cart)

                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 21),
              child: myTextFiledWithIcon(
                hintText: 'Search here',
                icon: Icons.search
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Expanded(
              child: Stack(
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 97,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.orangeColor,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(38),bottomRight: Radius.circular(38))
                      ),
                    ),
                  ),

                  Column(
                    children: [


                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 37,
                              top: 20,
                              bottom: 10,
                              child: Container(
                                child: Container(
                                  width: 320,
                                  height: 97,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 3
                                      )
                                    ]
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        customText(title:'Food',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                        customText(title: '120 items')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 18,
                              bottom: 10,
                              left: 25,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/dish1.png')
                                  )
                                ),
                              ),
                            ),

                            Positioned(
                              right: 25,
                              top: 10,
                              bottom: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(color: Colors.black12,spreadRadius: 3)
                                  ]
                                ),
                                child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.orangeColor,size: 25,),),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 37,
                              top: 20,
                              bottom: 10,
                              child: Container(
                                child: Container(
                                  width: 320,
                                  height: 97,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 3
                                      )
                                    ]
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        customText(title:'Food',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                        customText(title: '120 items')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 18,
                              bottom: 10,
                              left: 25,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/dish1.png')
                                  )
                                ),
                              ),
                            ),

                            Positioned(
                              right: 25,
                              top: 10,
                              bottom: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(color: Colors.black12,spreadRadius: 3)
                                  ]
                                ),
                                child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.orangeColor,size: 25,),),
                            )
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DesertScreen()));
                        },
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          child: Stack(
                            children: [
                              Positioned(
                                right: 37,
                                top: 20,
                                bottom: 10,
                                child: Container(
                                  child: Container(
                                    width: 320,
                                    height: 97,

                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 3
                                          )
                                        ]
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.only(left: 50),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          customText(title:'Desert',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                          customText(title: '120 items')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 18,
                                bottom: 10,
                                left: 25,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('assets/dish1.png')
                                      )
                                  ),
                                ),
                              ),

                              Positioned(
                                right: 25,
                                top: 10,
                                bottom: 10,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(color: Colors.black12,spreadRadius: 3)
                                      ]
                                  ),
                                  child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.orangeColor,size: 25,),),
                              )
                            ],
                          ),
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Stack(
                          children: [
                            Positioned(
                              right: 37,
                              top: 20,
                              bottom: 10,
                              child: Container(
                                child: Container(
                                  width: 320,
                                  height: 97,

                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(30),topLeft: Radius.circular(30)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 3
                                        )
                                      ]
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        customText(title:'Food',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                                        customText(title: '120 items')
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 18,
                              bottom: 10,
                              left: 25,
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('assets/dish1.png')
                                    )
                                ),
                              ),
                            ),

                            Positioned(
                              right: 25,
                              top: 10,
                              bottom: 10,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black12,spreadRadius: 3)
                                    ]
                                ),
                                child: Icon(Icons.arrow_forward_ios_rounded,color: AppColors.orangeColor,size: 25,),),
                            )
                          ],
                        ),
                      ),


                    ],
                  )


                ],
              ),
            ),
            SizedBox(
              height: 30,
            )




          ],
        ),
      ),
    );
  }
}
