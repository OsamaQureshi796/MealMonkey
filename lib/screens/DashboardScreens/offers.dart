import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class DealScreen extends StatefulWidget {

  @override
  _DealScreenState createState() => _DealScreenState();
}

class _DealScreenState extends State<DealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Text('Latest Offers',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              trailing: Icon(Icons.shopping_cart,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: Text('Find discounts, Offers special\nmeals and more!'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 21),
              child: MaterialButton(
                shape: StadiumBorder(),
                color: AppColors.orangeColor,
                onPressed: (){},child: Text("Check Offers",style: TextStyle(color: Colors.white),),
              ),
            ),
            ListViewWithImageAndStar(),
          ],
        ),
      ),
    );
  }
}
