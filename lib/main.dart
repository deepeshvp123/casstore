import 'package:casstore/listview/tripupdate.dart';
import 'package:casstore/listview/your_order(1).dart';
import 'package:casstore/views/bottemnavigationbar.dart';
import 'package:casstore/views/dashboard.dart';
import 'package:casstore/views/deliverynotes.dart';
import 'package:casstore/views/homepage.dart';
import 'package:casstore/views/notification.dart';
import 'package:casstore/views/otp_authentication.dart';
import 'package:casstore/views/password_recovery.dart';
import 'package:casstore/views/sharelocation.dart';
import 'package:casstore/views/signin.dart';
import 'package:casstore/views/signup.dart';
import 'package:casstore/views/splashscreen.dart';
import 'package:casstore/views/startdelivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(List<String> args) {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home:
   // PasswordRecovery()
   // OtpAuth()
   // DeliveryNote()
   // NotificationPage()
   // SplashScreen()
        // TripUpdate()
       //MainPage(),
    // SigninPAGE()
    //SignupPage(),
    Location()
     //Delivery()
   // YourOrder(),
  // DashBordPage()
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
