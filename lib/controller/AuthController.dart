import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:monkey_meal/screens/home.dart';

class AuthController extends GetxController {


  createMyUser(
      {String email, String password, String name, String phone, String cnic}) {

    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      //Success
      String uid = value.user.uid;

      /// One Document Per User
      FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name':name,
        'email':email,
        'number':phone,
        'cnic': cnic,
        'password':password
      }).then((value){
Get.to(()=>Dashboard());
      });
    }).catchError((e) {
      //Failed
    });
  }
}
