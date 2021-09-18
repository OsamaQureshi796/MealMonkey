import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  List<String> labels = [
    'Name',
    'Mobile',
    'Email',
    "Adress",
    "Password"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: SingleChildScrollView(
          child: Column(
            children: [

              ListTile(
                leading: Text('Profile',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                trailing: Icon(Icons.shopping_cart),
              ),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/dish7.png'),
              ),
              SizedBox(
               height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit,color: AppColors.orangeColor,),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Edit profile",style: TextStyle(color: AppColors.orangeColor),)
                ],
              ),
              SizedBox(
                height: 10,
              ),

              Text("Hi There Emilia",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

              TextButton(onPressed: (){}, child: Text('Sign out',style: TextStyle(color: Colors.grey),))
,
              for(int i=0;i<labels.length;i++)
              Column(
                children: [
                  myTextFiled(
                      hintText: labels[i]
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              myStadiumButton(
                title: 'Save',
                onTap: (){}
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
