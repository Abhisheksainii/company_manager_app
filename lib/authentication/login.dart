import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            child: Image.asset(Common.assetsImages + "bgcurve.png"),
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.3, top: h * 0.06),
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
                SizedBox(
                  height: h * 0.03,
                ),
                Container(
                  height: h * 0.2,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white70, width: w * 0.04),
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.35, left: w * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: h * 0.03, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Text(
                  "Subdomain",
                  style: TextStyle(
                      fontSize: h * 0.018,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff00C0F9)),
                ),
                Container(
                  width: w * 0.8,
                  child: Theme(
                    data: ThemeData(
                      primaryColor: Appcolors.lightprimarycolor,
                    ),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: h * 0.023),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Approutes.loginpassword);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color(0xfff00C0F9),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    height: h * 0.065,
                    width: w * 0.3,
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          fontSize: h * 0.02,
                          color: Appcolors.whitecolor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: w * 0.245,
            bottom: -h * 0.11,
            child: Image.asset(
              Common.assetsImages + "world.png",
              width: w * 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
