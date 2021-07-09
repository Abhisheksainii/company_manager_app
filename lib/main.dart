import 'package:company_manager_app/authentication/welcome.dart';
import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

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
      initialRoute: Approutes.welcomescreen,
      routes: {
        Approutes.welcomescreen: (context) => Welcomescreen(),
      },
    );
  }
}
