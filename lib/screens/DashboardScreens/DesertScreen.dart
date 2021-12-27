import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monkey_meal/screens/DashboardScreens/menuScreen.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class DesertScreen extends StatefulWidget {

  String category,id;

  DesertScreen({this.id,this.category});


  @override
  _DesertScreenState createState() => _DesertScreenState();
}

class _DesertScreenState extends State<DesertScreen> {


  List<MenuItems> menuItems = [];
  List<MenuItems> filteredData = [];

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {


    print(widget.id);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(title: widget.category,style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
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
                  icon: Icons.search,
                  controller: searchController,
                onChange: (){
                    setState(() {

                    });
                }
              ),
            ),
            SizedBox(
              height: 30,
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('Recipes').where('parentId',isEqualTo: widget.id).snapshots(),
              builder: (context, snapshot) {


                if(!snapshot.hasData){
                  return Center(child: CircularProgressIndicator(),);
                }

                List<DocumentSnapshot> firebaseData = snapshot.data.docs;

                print(firebaseData.length);


                menuItems.clear();
                firebaseData.forEach((element) {
                  menuItems.add(MenuItems.fromJson(element.data(),element.id));
                });

                if(searchController.text.isEmpty){
                  filteredData = menuItems;
                   }else{
                  filteredData = menuItems.where((element) => element.title.toLowerCase().contains(searchController.text.toLowerCase())).toList();
                   }


                return ListViewWithImageAndStarButBlack(context,menuItems: filteredData);
              }
            ),
          ],
        ),
      ),
    );
  }
}
