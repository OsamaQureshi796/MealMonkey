import 'package:flutter/material.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class DesertScreen extends StatefulWidget {

  @override
  _DesertScreenState createState() => _DesertScreenState();
}

class _DesertScreenState extends State<DesertScreen> {
  @override
  Widget build(BuildContext context) {
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
                  customText(title: "Desserts",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
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
            ListViewWithImageAndStarButBlack(),
          ],
        ),
      ),
    );
  }
}
