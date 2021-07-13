import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Salary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(clipBehavior: Clip.none, children: [
          Positioned(
            child: Image.asset(Common.assetsImages + "Rectangle.png"),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: w * 0.05, vertical: h * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        Common.assetsImages + "back.png",
                        width: w * 0.07,
                      ),
                    ),
                    SizedBox(
                      width: w * 0.06,
                    ),
                    Text(
                      "Salary",
                      style: GoogleFonts.poppins(
                          fontSize: w * 0.045,
                          color: Appcolors.whitecolor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      Common.assetsImages + "search.png",
                      width: w * 0.06,
                    ),
                    SizedBox(
                      width: w * 0.07,
                    ),
                    Image.asset(
                      Common.assetsImages + "bell.png",
                      width: w * 0.06,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: h * 0.08,
            left: w * 0.06,
            child: Container(
              height: h * 0.2,
              width: w * 0.36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                Common.assetsImages + "Ellipse 10.png",
              ),
            ),
          ),
          Positioned(
            top: h * 0.19,
            left: w * 0.43,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shafiul Hasan",
                  style: TextStyle(
                      fontSize: h * 0.022,
                      fontWeight: FontWeight.w600,
                      color: Color(0xfff00C0F9)),
                ),
                Text(
                  "Co-Founder",
                  style: TextStyle(
                      color: Colors.grey.shade500, fontSize: h * 0.016),
                ),
              ],
            ),
          ),
          Positioned(
            left: w * 0.7,
            top: h * 0.09,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: h * 0.1,
                  width: w * 0.1,
                  decoration: BoxDecoration(
                    color: Appcolors.whitecolor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    Common.assetsImages + "phone.png",
                    height: h * 0.05,
                    width: w * 0.05,
                  ),
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Container(
                  alignment: Alignment.center,
                  height: h * 0.1,
                  width: w * 0.1,
                  decoration: BoxDecoration(
                    color: Appcolors.whitecolor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    Common.assetsImages + "mail.png",
                    height: h * 0.05,
                    width: w * 0.05,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: h * 0.3, left: w * 0.06),
            child: Row(
              children: [
                Column(
                  children: [
                    SalaryInfo(
                      h: h,
                      w: w,
                      heading: "PAID INVOICE",
                      money: "600",
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SalaryInfo(
                      h: h,
                      w: w,
                      heading: "COMPLETED PROJECTS",
                      money: "600",
                    ),
                  ],
                ),
                SizedBox(
                  width: w * 0.04,
                ),
                Column(
                  children: [
                    SalaryInfo(
                      h: h,
                      w: w,
                      heading: "UNPAID INVOICE",
                      money: "470",
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    SalaryInfo(
                      h: h,
                      w: w,
                      heading: "IN PROGRESS PROJECTS",
                      money: "470",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class SalaryInfo extends StatelessWidget {
  const SalaryInfo({
    Key key,
    @required this.h,
    @required this.w,
    @required this.heading,
    @required this.money,
  }) : super(key: key);
  final String money;
  final String heading;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            heading,
            style: TextStyle(fontSize: h * 0.014, color: Colors.grey.shade500),
          ),
          Text(
            '\$${money}',
            style: TextStyle(
                fontSize: h * 0.04, color: Appcolors.lightprimarycolor),
          ),
          SizedBox(
            height: h * 0.001,
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
      width: w * 0.42,
      height: h * 0.2,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Appcolors.whitecolor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 20.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              2.0, // Move to right 10  horizontally
              2.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
    );
  }
}
