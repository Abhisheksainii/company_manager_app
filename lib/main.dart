import 'package:company_manager_app/authentication/welcome.dart';
import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/screens/Home/homeScreen.dart';
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
      initialRoute: Approutes.drawer,
      routes: {
        Approutes.welcomescreen: (context) => Welcomescreen(),
        Approutes.homeScreen: (context) => HomeScreen(),
        Approutes.drawer: (context) => CustomDrawer(),
      },
    );
  }
}
