import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:table_calendar/table_calendar.dart';

class LeaveCalendar extends StatefulWidget {
  @override
  _LeaveCalendarState createState() => _LeaveCalendarState();
}

class _LeaveCalendarState extends State<LeaveCalendar> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: w * 1.8,
              height: h * 0.137,
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
                          "Leave Calendar",
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
            Expanded(
              child: Column(
                children: [
                  TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime.utc(2010, 06, 15),
                    lastDay: DateTime.utc(2030, 10, 04),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.01, left: w * 0.02),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: w * 0.22,
                            height: h * 0.034,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0XFF2FABF2),
                            ),
                            child: Center(
                              child: Text(
                                "Title Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: w * 0.025),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Image.asset(
                              Common.assetsImages + "dot.png",
                              width: w * 0.026,
                            ),
                          ),
                          SizedBox(
                            width: w * 0.03,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Md. Ashiqul Amin",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w * 0.04,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00000010",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFFC5C5C5),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    Text(
                                      "Annual Leave",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF2FABF2),
                                        fontSize: w * 0.03,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing ….",
                                  style: GoogleFonts.poppins(
                                    fontSize: w * 0.025,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.01, left: w * 0.02),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: w * 0.22,
                            height: h * 0.034,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Color(0XFFF7B634),
                            ),
                            child: Center(
                              child: Text(
                                "Title Name",
                                style: TextStyle(
                                    color: Colors.white, fontSize: w * 0.025),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: w * 0.037,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Column(
                              children: [
                                Image.asset(
                                  Common.assetsImages + "dot2.png",
                                  width: w * 0.08,
                                ),
                                Image.asset(
                                  Common.assetsImages + "line1.png",
                                  width: w * 0.0015,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Md. Ashiqul Amin",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w * 0.04,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00000010",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFFC5C5C5),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    Text(
                                      "Annual Leave",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF2FABF2),
                                        fontSize: w * 0.03,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing ….",
                                  style: GoogleFonts.poppins(
                                    fontSize: w * 0.025,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: h * 0.01, left: w * 0.02),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.01),
                            child: Column(
                              children: [
                                Image.asset(
                                  Common.assetsImages + "dot2.png",
                                  width: w * 0.08,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Md. Ashiqul Amin",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: w * 0.04,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "00000010",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFFC5C5C5),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.02,
                                    ),
                                    Text(
                                      "Annual Leave",
                                      style: GoogleFonts.poppins(
                                        color: Color(0xFF2FABF2),
                                        fontSize: w * 0.03,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Lorem Ipsum is simply dummy text of the printing ….",
                                  style: GoogleFonts.poppins(
                                    fontSize: w * 0.025,
                                  ),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
