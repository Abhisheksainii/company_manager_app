import 'package:company_manager_app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/authentication/login.dart';

class Welcomescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: Appcolors.gradient,
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: h * 0.12,
                  ),
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: h * 0.028,
                      fontWeight: FontWeight.w700,
                      color: Appcolors.whitecolor,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.12,
                  ),
                  CircleAvatar(
                    foregroundColor: Color(0xff707070),
                    radius: w * 0.18,
                    backgroundColor: Appcolors.whitecolor,
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Container(
                    width: w * 0.7,
                    child: Text(
                      "No need to visit an agent. Send 90 Currencies to 150 Countries, from your smartphone or computer",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          height: 1.4,
                          color: Appcolors.whitecolor,
                          fontWeight: FontWeight.w500,
                          fontSize: h * 0.015),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.22,
                  ),
                  GestureDetector(
                    onVerticalDragUpdate: (dragupdate) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => LoginScreen()));
                    },
                    child: Container(
                      height: h * 0.11,
                      width: w * 1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              Common.assetsImages + "welcomebottom.png"),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
