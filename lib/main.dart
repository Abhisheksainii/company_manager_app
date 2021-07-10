import 'package:company_manager_app/authentication/login.dart';
import 'package:company_manager_app/authentication/loginpass.dart';
import 'package:company_manager_app/authentication/welcome.dart';
import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/screens/Home/homeScreen.dart';
import 'package:company_manager_app/screens/profile/profilescreen.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:company_manager_app/widgets/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      initialRoute: "profile",
      routes: {
        Approutes.welcomescreen: (context) => Welcomescreen(),
        Approutes.homeScreen: (context) => HomeScreen(),
        Approutes.loginScreen: (context) => LoginScreen(),
        Approutes.loginPassword: (context) => LoginPassword(),
        "dr": (context) => CustomDrawer(),
        "profile": (context) => ProfileScreen(),
      },
    );
  }
}
