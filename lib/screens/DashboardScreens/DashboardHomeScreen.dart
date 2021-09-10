import 'package:flutter/material.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class DashboardHomeScreen extends StatefulWidget {
  @override
  _DashboardHomeScreenState createState() => _DashboardHomeScreenState();
}

class _DashboardHomeScreenState extends State<DashboardHomeScreen> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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

                Container(
                  height: 113,
                  width: double.infinity,
                  child: ListView.builder(
                    itemBuilder: (ct, i) {
                      return Container(
                        child: Column(
                          children: [
                            Container(
                              width: 120,
                              height: 90,
                              child: Image.asset('assets/3.png'),
                            ),
                            Text("Food")
                          ],
                        ),
                      );
                    },
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
