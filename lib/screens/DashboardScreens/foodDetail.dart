import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';

class FoodDetailScreen extends StatefulWidget {
  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  String dropdownValue = '   - Select the size of the portion';
  String dropdownValue2 = '   - Select the ingradients';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/dish6.png'),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.black26, BlendMode.darken))),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42),
                        topRight: Radius.circular(42))),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          "Tandori Chicken Pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColors.orangeColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.orangeColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.orangeColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColors.orangeColor,
                            ),
                            Icon(
                              Icons.star_border,
                              color: AppColors.orangeColor,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          '4 Star Rating',
                          style: TextStyle(
                              color: AppColors.orangeColor, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'RS. 750\n /per Portion',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Divider(
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Text(
                          "Customize your Order",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: AppColors.lightGreyColor,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue,
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              '   - Select the size of the portion',
                              'Two',
                              'Free',
                              'Four'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: AppColors.lightGreyColor,
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: dropdownValue2,
                            icon: const Icon(Icons.keyboard_arrow_down_sharp),
                            iconSize: 24,
                            elevation: 16,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              '   - Select the ingradients',
                              'Two',
                              'Free',
                              'Four'
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Number of Portions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                MaterialButton(
                                  minWidth: 50,
                                  onPressed: () {},
                                  shape: StadiumBorder(),
                                  color: AppColors.orangeColor,
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                MaterialButton(
                                  minWidth: 50,
                                  onPressed: () {},
                                  shape: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColors.orangeColor),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                MaterialButton(
                                  minWidth: 50,
                                  onPressed: () {},
                                  shape: StadiumBorder(),
                                  color: AppColors.orangeColor,
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 171,
                        width: double.infinity,
                        child: Stack(
                          children: [
                            Container(
                              width: 97,
                              height: 171,
                              decoration: BoxDecoration(
                                  color: AppColors.orangeColor,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(38),
                                      bottomRight: Radius.circular(38))),
                            ),
                            Positioned(
                              top: 25,
                              right: 60,
                              child: Container(
                                width: 300,
                                height: 122,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 2,
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(40),
                                        bottomLeft: Radius.circular(40),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Total Price',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      'LKR 1500',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 60),
                                      child: MaterialButton(
                                        shape: StadiumBorder(),
                                        onPressed: () {},
                                        color: AppColors.orangeColor,
                                        child: Row(
                                          children: [
                                            Expanded(child: Icon(Icons.shopping_cart,color: Colors.white,)),


                                            Expanded(
                                              flex: 2,
                                                child: Text("Add to cart",style: TextStyle(color: Colors.white),))

                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 65,
                              bottom: 65,
                              right: 40,
                              child: Material(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: AppColors.orangeColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 235,
              right: 10,
              child: Material(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.orangeColor,
                    size: 30,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
