import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:monkey_meal/model/ImageWithLabelModel.dart';
import 'package:monkey_meal/model/ImageWithStarModel.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class DashboardHomeScreen extends StatefulWidget {
  @override
  _DashboardHomeScreenState createState() => _DashboardHomeScreenState();
}

class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
  String dropdownValue = 'One';

  ///MVC ---> Model, View, Controller

  /// Local Datbase
  List<Map<String, String>> databaseData = [
    {'image': 'assets/dish1.png', 'lable': 'Offers'},
    {'image': 'assets/dish2.png', 'lable': 'Sri Lankan'},
    {'image': 'assets/dish3.png', 'lable': 'Italian'},
  ];

  List<Map<String, dynamic>> dishData = [
    {
      'image': 'assets/dish1.png',
      'lable': 'Offers',
      'desc': 'This is very Cool dish',
      'star': 4.5
    },
    {
      'image': 'assets/dish2.png',
      'lable': 'Sri Lankan',
      'desc': 'This is very Cool dish',
      'star': 4.5
    },
    {
      'image': 'assets/dish3.png',
      'lable': 'Italian',
      'desc': 'This is very Cool dish',
      'star': 4.5
    },
  ];

  ///JSON --> Javascript Object Notation

  List<ImageWithLabelModel> filteredData = [];

  List<ImageWithStarModel> starsTypeData = [];

  @override
  initState() {

    /// Hardcoded Data
    // databaseData.forEach((e) {
    //   filteredData.add(ImageWithLabelModel.fromJson(e));
    // });

    dishData.forEach((element) {
      starsTypeData.add(ImageWithStarModel.fromJson(element));
    });

    databaseData.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 62, left: 21, right: 21),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(title: 'Good Morning Alika'),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart_sharp))
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  customText(
                      title: 'Delivering to',
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_outlined),
                          iconSize: 24,
                          elevation: 16,
                          isExpanded: true,
                          style: const TextStyle(
                              color: Colors.black45,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          underline: Container(),
                          onChanged: (String newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          },
                          items: <String>['One', 'Two', 'Free', 'Four']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                      Expanded(child: Container())
                    ],
                  ),
                  myTextFiledWithIcon(
                      hintText: 'Search here...', icon: Icons.search),
                  SizedBox(
                    height: 20,
                  ),
                  StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance.collection('category').snapshots(),
                    builder: (context, snapshot) {

                      if(!snapshot.hasData){
                        return Center(child: CircularProgressIndicator(),);
                      }


                      //Raw form data
                      List<DocumentSnapshot> dbData = snapshot.data.docs;


                      dbData.forEach((DocumentSnapshot e) {



                  filteredData.add(ImageWithLabelModel.fromJson(e.data()));
                        });

                        return ListViewWithImageAndLabel(
                        data: filteredData,
                      );
                    }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText(
                        title: 'Popular Resturants',
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(color: AppColors.orangeColor),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('poplarResturants').limit(3).snapshots(),
              builder: (context, snapshot) {


                if(!snapshot.hasData){
                  return Center(child: CircularProgressIndicator(),);
                }
                return ListViewWithImageAndStar(
                  popularResturants: snapshot.data.docs
                );
              }
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                      title: 'Most Popular',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  customText(
                      title: 'View All',
                      style: TextStyle(color: AppColors.orangeColor))
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              height: 191,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (ctx, i) {
                  return Container(
                    height: 185,
                    width: 228,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 135,
                          width: 228,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(starsTypeData[i].image),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          starsTypeData[i].label,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Row(
                          children: [
                            Text(starsTypeData[i].desc),
                            Icon(
                              Icons.star,
                              color: AppColors.orangeColor,
                            ),
                            Text(starsTypeData[i].starCount.toString())
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: starsTypeData.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                      title: 'Recent Items',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  customText(
                      title: 'View All',
                      style: TextStyle(color: AppColors.orangeColor))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              itemBuilder: (ctx, i) {
                return Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 10),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(starsTypeData[i].image))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customText(
                            title: starsTypeData[i].label,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),

                        customText(title: starsTypeData[i].desc),
                        Row(
                          children: [
                            Icon(Icons.star,color: AppColors.orangeColor,),

                            customText(
                              title: starsTypeData[i].starCount.toString()
                            )

                          ],
                        )

                      ],
                    )
                  ],
                );
              },
              itemCount: starsTypeData.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
            )
          ],
        ),
      ),
    );
  }
}
