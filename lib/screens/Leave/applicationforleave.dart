import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';

class ApplicationForleave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            width: w * 1,
            height: h * 0.132,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Common.assetsImages + "Union 45.png"),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: w * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Common.assetsImages + "back.png",
                        width: w * 0.07,
                      ),
                      SizedBox(
                        width: w * 0.06,
                      ),
                      Text(
                        "Application For Leave",
                        style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            color: Appcolors.whitecolor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
