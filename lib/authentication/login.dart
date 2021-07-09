import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Positioned(
            child: Image.asset(Common.assetsImages + "bgcurve.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: GoogleFonts.poppins(
                    fontSize: h * 0.028,
                    fontWeight: FontWeight.w700,
                    color: Appcolors.whitecolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
