import 'package:company_manager_app/authentication/login.dart';
import 'package:company_manager_app/authentication/loginpass.dart';
import 'package:company_manager_app/authentication/welcome.dart';
import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/screens/Claim/Claim.dart';
import 'package:company_manager_app/screens/Home/attendance.dart';
import 'package:company_manager_app/screens/Home/homeScreen.dart';
import 'package:company_manager_app/screens/Leave/ApproveApplication.dart';
import 'package:company_manager_app/screens/Leave/LeaveApplication.dart';
import 'package:company_manager_app/screens/profile/profilescreen.dart';
import 'package:company_manager_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

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
      initialRoute: Approutes.claim,
      routes: {
        Approutes.welcomescreen: (context) => Welcomescreen(),
        Approutes.homeScreen: (context) => HomeScreen(),
        Approutes.drawer: (context) => CustomDrawer(),
        Approutes.attendance: (context) => AttendanceScreen(),
        Approutes.loginscreen: (context) => LoginScreen(),
        Approutes.loginpassword: (context) => LoginPassword(),
        Approutes.profile: (context) => ProfileScreen(),
        Approutes.leaveapplication: (context) => LeaveApplication(),
        Approutes.Approveapplication: (context) => ApproveApplication(),
        Approutes.claim: (context) => Claim(),
      },
    );
  }
}
