import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:monkey_meal/utils/AppColors.dart';
import 'package:monkey_meal/widgets/ourWidgets.dart';

class MapScreen extends StatefulWidget {

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: ListTile(
                  leading: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),

                  title: Text("Change Address",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),),
                ),
              ),
            ),

            Expanded(
              flex: 7,
              child: Container(
                child: GoogleMap(
                  mapType: MapType.terrain,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                   // ? _controller.complete(controller);
                  },
                ),
              ),
            ),

            Expanded(flex: 2,child: Container(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Column(
                children: [
                  SizedBox(
                    height: 2,
                  ),
                  myTextFiledWithIcon(icon: Icons.search,hintText: 'Search Address'),


                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffFCDED5),
                        child: Icon(Icons.star,color: AppColors.orangeColor,),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Choose a saved place',style: TextStyle(color: Colors.black,fontSize: 18),),

                      Spacer(),

                      Icon(Icons.arrow_forward_ios_rounded)

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )

                ],
              ),

            ),)
          ],
        ),
      ),
    );
  }
}
