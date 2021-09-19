import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
          ListTile(
            leading: Icon(Icons.arrow_back_ios),
            title: Text("Notifications",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.shopping_cart),
          ),


            for(int i=0;i<8;i++)
              ListTile(
                leading: CircleAvatar(backgroundColor: Colors.red,radius: 6,),
                title: Text("Your orders has been picked up"),
                subtitle: Text("3 m ago"),
                
              ),

            
          ],
        ),
      ),
    );
  }
}
