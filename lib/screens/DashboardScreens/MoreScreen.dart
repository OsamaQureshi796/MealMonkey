import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/DashboardScreens/myOrders.dart';
import 'package:monkey_meal/screens/DashboardScreens/paymentScreen.dart';

import 'NotificationScreen.dart';
import 'map_screen.dart';

class MoreScreen extends StatefulWidget {

  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  List<MoreModel> items = [
    MoreModel(
      name: 'Payment Detials',
      icon: Icons.attach_money_outlined
    ),
    MoreModel(
        name: 'My Orders',
        icon: Icons.shopping_bag
    ),
    MoreModel(
        name: 'Notifications',
        icon: Icons.notifications,
      count: 15,
    ),
    MoreModel(
        name: 'Inbox',
        icon: Icons.email
    ),
    MoreModel(
        name: 'About US',
        icon: Icons.info
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          children: [

            ListTile(
              leading: Text('More',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              trailing: Icon(Icons.shopping_cart),
            ),

            for(int i=0;i<items.length;i++)
            InkWell(
              onTap: (){

                if(i==0){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>PaymentScreen()));

                }
                else if(i==1){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MyOrders()));

                }
                else if(i==2){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>NotificationScreen()));

                }else if(i==3){
                                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>MapScreen()));

                }

              },
              child: Column(
                children: [
                  Stack(
                    children: [

                      Container(
                        margin: EdgeInsets.only(right: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(7)
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xffD8D8D8),
                              child: Icon(items[i].icon,color: Colors.black,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(items[i].name),

                            Spacer(),

                            items[i].count ==0 ?
                            Container()
                           : CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Text(items[i].count.toString(),style: TextStyle(color: Colors.white),),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 1,
                        bottom: 1,
                        child: CircleAvatar(
                          backgroundColor: Color(0xffF6F6F6),
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class MoreModel{
  String name;
  IconData icon;
  int count;

  MoreModel({this.name,this.icon,this.count=0});

}
