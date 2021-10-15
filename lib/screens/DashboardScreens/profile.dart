import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  bool isDataLoading = true;
  DocumentSnapshot myData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String uid = FirebaseAuth.instance.currentUser.uid;
    print(uid);
    FirebaseFirestore.instance.collection('users').doc(uid).get().then((value){
      isDataLoading = false;

      myData = value;

      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {

    print("Hello");
    print(FirebaseAuth.instance.currentUser.uid);
    String image;
    String name;
    String email;

    try{
      image = myData.get('image');
    }catch(e){
      image = '';
    }
    
    try{
      name = myData.get('name');
    }catch(e){
      name = '';
    }

    try{
      email = myData.get('email');
    }catch(e){
      email = '';
    }

    return Scaffold(
      body: isDataLoading? Center(child: CircularProgressIndicator(),) :Padding(
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
              image.isEmpty?
                  CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.camera_alt),
                  )
                  :CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(image),
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

              Text("Hi There $email",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),

              TextButton(onPressed: (){}, child: Text('Sign out',style: TextStyle(color: Colors.grey),))
,

              Column(
                children: [
                  myTextFiled(
                      hintText: 'Name',
                    controller: nameController
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  myTextFiled(
                      hintText: 'Email',
                    controller: emailController

                  ),
                  SizedBox(
                    height: 10,
                  ),
                  myTextFiled(
                      hintText: 'Mobile Number',
                    controller: mobileController
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  myTextFiled(
                      hintText: 'Address',
                    controller: addressController
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
