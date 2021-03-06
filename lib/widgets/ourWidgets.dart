import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkey_meal/model/ImageWithLabelModel.dart';
import 'package:monkey_meal/screens/DashboardScreens/foodDetail.dart';
import 'package:monkey_meal/screens/DashboardScreens/menuScreen.dart';
import 'package:monkey_meal/utils/AppColors.dart';

Widget myRichText({String title1 = 'Meal ', String title2 = 'Monkey'}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: title1,
        style: TextStyle(
          color: AppColors.orangeColor,
          fontSize: 34,
          fontWeight: FontWeight.bold,
        )),
    TextSpan(
        text: title2,
        style: TextStyle(
            color: AppColors.lightBlackColor,
            fontSize: 34,
            fontWeight: FontWeight.bold)),
  ]));
}

Widget myRichTextChangeDirection({
  String title1 = 'Meal ',
  String title2 = 'Monkey',
}) {
  return RichText(
      text: TextSpan(children: [
    TextSpan(
        text: title1,
        style: TextStyle(
          color: AppColors.lightBlackColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        )),
    TextSpan(
        text: title2,
        style: TextStyle(
            color: AppColors.orangeColor,
            fontSize: 16,
            fontWeight: FontWeight.bold)),
  ]));
}

Widget myText() {
  return Text(
    "Food Delivery",
    style: GoogleFonts.poppins(fontSize: 10, letterSpacing: 5),
  );
}

Widget customText({String title, TextStyle style, TextAlign align}) {
  return Text(
    title,
    style: style,
    textAlign: align,
  );
}

Widget myStadiumButton({String title, Function onTap}) {
  return MaterialButton(
    height: 56,
    shape: StadiumBorder(),
    minWidth: double.infinity,
    onPressed: onTap,
    child: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
    color: AppColors.orangeColor,
  );
}

Widget myStadiumIconButton(
    {String title, Function onTap, IconData icon, Color color}) {
  return MaterialButton(
    height: 56,
    shape: StadiumBorder(),
    minWidth: double.infinity,
    onPressed: onTap,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    color: color,
  );
}

Widget myTextFiled({String hintText, Function validator, Function onSaved,TextEditingController controller}) {
  return TextFormField(
    validator: validator,
    controller: controller,
    onSaved: onSaved,
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.symmetric(horizontal: 0),
      filled: true,
      // fillColor: AppColors.lightBlackColor,
      fillColor: Colors.grey.withOpacity(0.4),
      hintText: hintText,

      hintStyle: TextStyle(color: AppColors.hintColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
    ),
  );
}

Widget myTextFiledWithIcon({String hintText, IconData icon,TextEditingController controller,Function onChange}) {
  return TextField(
    controller: controller,
    onChanged: (input)=>onChange(),
    decoration: InputDecoration(
      // contentPadding: EdgeInsets.symmetric(horizontal: 0),
      filled: true,
      fillColor: AppColors.lightGreyColor,
      hintText: hintText,
      prefixIcon: Icon(icon),
      hintStyle: TextStyle(color: AppColors.hintColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0),
          borderRadius: BorderRadius.circular(28)),
    ),
  );
}

Widget ListViewWithImageAndLabel({List<ImageWithLabelModel> data}) {
  return Container(
    height: 113,
    width: double.infinity,
    child: ListView.builder(
      itemBuilder: (ct, i) {
        return Container(
          margin: EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Container(
                width: 120,
                height: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          data[i].image,
                        ),
                        fit: BoxFit.fill)),
              ),
              Text(data[i].lable)
            ],
          ),
        );
      },
      itemCount: data.length,
      scrollDirection: Axis.horizontal,
    ),
  );
}

Widget ListViewWithImageAndStar({List<DocumentSnapshot> popularResturants= const[]}) {
  return Container(
    child: ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, i) {

        String image='';
        String title = '';
        String stars = '';
        String rating = '';

        try{
          image = popularResturants[i].get('image');
        }catch(e){
          image = '';
        }

        try{
          title = popularResturants[i].get('title');
        } catch(e){
          title = '';
        }

        try{
          stars = popularResturants[i].get('stars');
        }catch(e){
          stars = '';
        }

        try{
          rating = popularResturants[i].get('rating');
        }catch(e){
          rating = '';
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              margin: EdgeInsets.only(bottom: 20),
              color: Colors.green,
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: customText(
                  title: title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.orangeColor,
                  ),
                  customText(
                      title: stars,
                      style: TextStyle(
                          color: AppColors.orangeColor,
                          fontWeight: FontWeight.bold)),
                  customText(
                      title:
                          '  ($rating stars) this is very good dish and i love it.')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        );
      },
      itemCount: popularResturants.length,
    ),
  );
}

Widget ListViewWithImageAndStarButBlack(BuildContext context,{List<MenuItems> menuItems}) {

  print(menuItems.length);

  return Container(
    child: ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (ctx, i) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (ctx) => FoodDetailScreen(menuItems[i].docId,favIds: menuItems[i].myFavouriteUsers,)));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                          menuItems[i].image,
                        ),
                        colorFilter:
                            ColorFilter.mode(Colors.black38, BlendMode.darken),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: customText(
                          title: menuItems[i].title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.orangeColor,
                          ),
                          customText(
                              title: '4.5',
                              style: TextStyle(
                                  color: AppColors.orangeColor,
                                  fontWeight: FontWeight.bold)),
                          customText(
                              title:
                                  '  (125 stars) this is very good dish and i love it.',
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: menuItems.length,
    ),
  );
}
