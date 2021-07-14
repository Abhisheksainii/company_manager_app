import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelfAttendence extends StatefulWidget {
  @override
  _SelfAttendenceState createState() => _SelfAttendenceState();
}

class _SelfAttendenceState extends State<SelfAttendence> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        child: Column(
          children: [
            Container(
              width: w * 1,
              height: h * 0.1318,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Common.assetsImages + "Union 45.png"),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: h * 0.04, left: w * 0.04),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        child: Image(
                          image: AssetImage(Common.assetsImages + "back.png"),
                          width: w * 0.07,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Container(
                        child: Text(
                          "Self Attendance",
                          style: GoogleFonts.poppins(
                              fontSize: w * 0.045,
                              color: Appcolors.whitecolor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.26,
                      ),
                      Container(
                        child: Image.asset(
                          Common.assetsImages + "search.png",
                          width: w * 0.06,
                        ),
                      ),
                      SizedBox(
                        width: w * 0.07,
                      ),
                      Container(
                        child: Image.asset(
                          Common.assetsImages + "bell.png",
                          width: w * 0.05,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: w * 2.0,
                height: h * 0.15,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Common.assetsImages + "map_bg.png"),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: h * 0.42,
                      left: w * 0.78,
                      child: Container(
                        child: Image.asset(
                          Common.assetsImages + "current_location.png",
                          width: w * 0.22,
                        ),
                      ),
                    ),
                    Positioned(
                      top: h * 0.15,
                      left: w * 0.2,
                      child: Container(
                        child: Image.asset(
                          Common.assetsImages + "radar.png",
                          width: w * 0.5,
                        ),
                      ),
                    ),
                    Positioned(
                      top: h * 0.52,
                      left: w * 0.05,
                      child: Container(
                        height: h * 0.3,
                        width: w * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white),
                        child: Padding(
                          padding:
                              EdgeInsets.only(top: h * 0.02, left: w * 0.05),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Remarks",
                                  style: GoogleFonts.poppins(
                                    fontSize: w * 0.035,
                                    color: Color(0xFFC0C0C0),
                                  ),
                                ),
                                Container(
                                  width: w * 0.8,
                                  child: Theme(
                                    data: ThemeData(
                                      primaryColor: Color(0xFFEFEFEF),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFEFEFEF),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFFEFEFEF),
                                          ),
                                        ),
                                        hintMaxLines: 7,
                                        hintText:
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.                                                                                                                                                                                                   ",
                                        hintStyle:
                                            TextStyle(fontSize: w * 0.032),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.04,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                        color: Color(0xFF02D07E),
                                      ),
                                      height: h * 0.065,
                                      width: w * 0.39,
                                      child: Center(
                                        child: Text(
                                          "In Time",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            fontSize: w * 0.04,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                        color: Color(0xFFFF4B4B),
                                      ),
                                      height: h * 0.065,
                                      width: w * 0.39,
                                      child: Center(
                                        child: Text(
                                          "Out Time",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.poppins(
                                            fontSize: w * 0.04,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
