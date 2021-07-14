import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceScreen extends StatefulWidget {
  @override
  _AttendanceScreenState createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        child: Container(
          child: Stack(
            children: [
              Image(
                image: AssetImage(Common.assetsImages + "Union 44.png"),
              ),
              Positioned(
                top: h * 0.05,
                left: w * 0.05,
                child: Container(
                  child: Row(
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
                        width: w * 0.07,
                      ),
                      Text(
                        "Attendance",
                        style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            color: Appcolors.whitecolor,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: w * 0.45,
                      ),
                      Container(
                        height: h * 0.048,
                        width: w * 0.048,
                        child: Image(
                          image: AssetImage(Common.assetsImages + "bell.png"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: h * 0.085,
                left: w * 0.055,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: h * 0.11,
                        width: w * 0.11,
                        child: Image(
                          image: AssetImage(
                              Common.assetsImages + "Ellipse 10.png"),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.58,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Appcolors.whitecolor,
                            shape: BoxShape.circle),
                        height: h * 0.095,
                        width: w * 0.095,
                        child: Center(
                          child: Container(
                            height: h * 0.04,
                            width: w * 0.04,
                            child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "logout 7.png"),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.02,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Appcolors.whitecolor,
                            shape: BoxShape.circle),
                        height: h * 0.095,
                        width: w * 0.095,
                        child: Center(
                          child: Container(
                            height: h * 0.025,
                            width: w * 0.025,
                            child: Image(
                              image: AssetImage(
                                  Common.assetsImages + "dollar.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: h * 0.18,
                left: w * 0.05,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "John Smith",
                          style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            fontWeight: FontWeight.w500,
                            color: Appcolors.whitecolor,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Co-Founder",
                          style: GoogleFonts.poppins(
                            fontSize: w * 0.03,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF81C1F0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: h * 0.25,
                left: w * 0.06,
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Approutes.myattendance);
                          },
                          child: CustomCard(
                            h: h,
                            w: w,
                            imgPath: "attendance",
                            cardText: "MY ATTENDANCE",
                            bottomRec: "blueRec",
                          ),
                        ),
                        SizedBox(
                          width: w * 0.088,
                        ),
                        CustomCard(
                          h: h,
                          w: w,
                          imgPath: "viewatd",
                          cardText: "VIEW ATTENDANCE",
                          bottomRec: "greyRec",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Approutes.selfattendance);
                          },
                          child: CustomCard(
                            h: h,
                            w: w,
                            imgPath: "Inout",
                            cardText: "IN/OUT ATTENDANCE",
                            bottomRec: "greyRec",
                          ),
                        ),
                        SizedBox(
                          width: w * 0.088,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Approutes.claimEntry);
                          },
                          child: CustomCard(
                            h: h,
                            w: w,
                            imgPath: "clipboard",
                            cardText: "APPROVE RECONCILIATION",
                            bottomRec: "blueRec",
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Row(
                      children: [
                        CustomCard(
                          h: h,
                          w: w,
                          imgPath: "reconciliation",
                          cardText: "RECONCILIATION APPLICATION",
                          bottomRec: "blueRec",
                        ),
                        SizedBox(
                          width: w * 0.088,
                        ),
                        CustomCard(
                          h: h,
                          w: w,
                          imgPath: "monitor",
                          cardText: "MONITOR   ATTENDANCE",
                          bottomRec: "greyRec",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key key,
    @required this.h,
    @required this.w,
    @required this.imgPath,
    this.cardText,
    this.bottomRec,
  }) : super(key: key);

  final double h;
  final double w;
  final String imgPath;
  final String cardText;
  final String bottomRec;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: widget.h * 0.22,
      width: widget.w * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Appcolors.whitecolor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: widget.h * 0.03),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: widget.h * 0.12,
                      width: widget.w * 0.12,
                      child: Image(
                        image: AssetImage(
                            Common.assetsImages + "${widget.imgPath}.png"),
                      ),
                    ),
                    Container(
                      child: Text(
                        "${widget.cardText}",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: widget.w * 0.035,
                          color: Color(0xFF343434),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Image(
            image: AssetImage(Common.assetsImages + "${widget.bottomRec}.png"),
          ),
        ],
      ),
    );
  }
}
