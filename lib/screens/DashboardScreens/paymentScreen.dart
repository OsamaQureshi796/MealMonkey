import 'package:flutter/material.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Payment Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        width: double.infinity,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 21),
                child: Text(
                  'Customise your payment Method',
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 21),

                child: Divider(color: Colors.black,thickness: 1,)),
            SizedBox(
              height: 10,
            ),

            Container(
              // height: 167,
              width: double.infinity,
              child: Card(
                elevation: 50,
                color: Color(0xffF7F7F7),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45,vertical: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Cash/Card on delivery',style: TextStyle(color: Colors.black,),)

                          ,Icon(Icons.check,color: AppColors.orangeColor,)
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(color: Colors.black,thickness: 1,),
                      Row(
                        children: [
                          Image.asset('assets/visa.png'),
                          Text("**** **** ***** ****"),
                          Spacer(),

                          MaterialButton(
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(24),
                              borderSide: BorderSide(color: AppColors.orangeColor)
                            ),
                            onPressed: (){},child: Text('Delete Card',style: TextStyle(color: AppColors.orangeColor),),)
                        ],
                      ),
                      Divider(color: Colors.black,thickness: 1,),

                      Text("Other Methods",style: TextStyle(color: Colors.black),)


                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: myStadiumIconButton(
                icon: Icons.add,
                title: 'Add another Credit/Debit Card',
                onTap: (){
                  _modalBottomSheetMenu();
                },
                color: AppColors.orangeColor
              ),
            )
          ],
        ),
      ),
    );
  }


  void _modalBottomSheetMenu(){
    showModalBottomSheet(
        context: context,
        builder: (builder){
          return new Container(
            // margin: EdgeInsets.symmetric(horizontal: ),
            height: 350.0,
            color: Colors.red, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: SingleChildScrollView(
              child: new Container(
                padding: EdgeInsets.only(top: 10,left: 15),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(18.0),
                          topRight: const Radius.circular(18.0))),
                  child: new Column(
                    children: [
                      Row(
                        children: [
                          Text("Add Credit/ Debit cards5",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
                        ,


                        ],
                      ),
                      SizedBox(height: 10,),
                      myTextFiled(

                         hintText: "Add a card number"
                      ),


                      SizedBox(height: 10,),

                      Row(
                        children: [
                          Container(
                            width: 120,
                            height: 50,
                            child: Text("Expire",style: TextStyle(color: Colors.grey),),
                          ),
                          Expanded(
                            child: myTextFiled(

                                hintText: "MM"
                            ),
                          ),
                          Expanded(
                            child: myTextFiled(

                                hintText: "Add a card number"
                            ),
                          ),

                        ],
                      ),
                      SizedBox(height: 10,),
                      myTextFiled(

                          hintText: "Security Code"
                      ),
                      SizedBox(height: 10,),
                      myTextFiled(

                          hintText: "First Name"
                      ),
                      SizedBox(height: 10,),
                      myTextFiled(

                          hintText: "Last Name"
                      ),
                      SizedBox(
                        height: 30,
                      ),

                    ],
                  )),
            ),
          );
        }
    );
  }

}
