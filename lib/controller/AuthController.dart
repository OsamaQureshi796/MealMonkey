import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monkey_meal/screens/home.dart';
import 'package:google_sign_in/google_sign_in.dart';

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


  var isUserLogin = false.obs;
  loginUser({String email,String password}){
    isUserLogin(true);
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
          ///Success
      isUserLogin(false);
      Get.to(()=>Dashboard());
    })
        .catchError((e){
      isUserLogin(false);
          ///Failed
        print(e);
        Get.snackbar('Failed', e.toString(),colorText: Colors.white,backgroundColor: Colors.red);
    });
  }



   signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    await FirebaseAuth.instance.signInWithCredential(credential).then((value) {
      Get.to(()=>Dashboard());
    }).catchError((e){
      print(e);
    });
  }


}
