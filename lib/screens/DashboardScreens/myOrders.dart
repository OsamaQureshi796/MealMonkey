import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_back_ios),
            title: Text("My Orders",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          SizedBox(
            height: 20,
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/dish7.png'
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("King Burger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  Row(
                    children: [
                      Icon(Icons.star,color: AppColors.orangeColor,),
                      Text("4.9",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(" (124 rating)",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  ),
                  Row(
                    children: [
                      Text("Burger"),
                      SizedBox(
                        width: 4,
                      ),
                      CircleAvatar(radius: 3,backgroundColor: AppColors.orangeColor,),
                      SizedBox(
                        width: 4,
                      ),
                      Text("Western Food")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_location,color: AppColors.orangeColor,),
                      Text("No 03, 4th Lane, Newyork")
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          for(int i=0;i<5;i++)
            Container(
              color: AppColors.lightGreyColor,
              child: Column(
                children: [
                  ListTile(
                    leading: Text("Beef Burger X${i+1}"),
                    trailing: Text("\$16"),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

          ListTile(
            leading: Text("Delivery Instrusctions"),
            trailing: Container(
              width: 150,
              child: Row(
                children: [

                  Icon(Icons.add,color: AppColors.orangeColor,),
                  Text("")

                ],
              ),
            ),
          )

        ],
      ),
    ));
  }
}
