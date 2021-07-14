import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';

class ApplicationForleave2 extends StatefulWidget {
  @override
  _ApplicationForleave2State createState() => _ApplicationForleave2State();
}

class _ApplicationForleave2State extends State<ApplicationForleave2> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: w * 1.8,
              height: h * 0.132,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Common.assetsImages + "Union 45.png"),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: w * 0.04, top: h * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Image.asset(
                            Common.assetsImages + "back.png",
                            width: w * 0.07,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: h * 0.03, left: w * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Leave Type",
                            style: GoogleFonts.poppins(
                                color: Color(0xFFC0C0C0), fontSize: w * 0.03),
                          ),
                          Container(
                            width: w * 0.9,
                            height: h * 0.06,
                            child: Theme(
                              data: ThemeData(
                                primaryColor: Color(0xFFEFEFEF),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black,
                                  ),
                                  hintMaxLines: 1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFEFEFEF),
                                    ),
                                  ),
                                  hintText: "Office Rent",
                                  hintStyle: TextStyle(
                                    fontSize: w * 0.04,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "From Date",
                            style: GoogleFonts.poppins(
                                color: Color(0xFFC0C0C0), fontSize: w * 0.03),
                          ),
                          Container(
                            width: w * 0.9,
                            height: h * 0.06,
                            child: Theme(
                              data: ThemeData(
                                primaryColor: Color(0xFFEFEFEF),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                  ),
                                  hintMaxLines: 1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFEFEFEF),
                                    ),
                                  ),
                                  hintText: "27-07-2021",
                                  hintStyle: TextStyle(
                                    fontSize: w * 0.04,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color(0xFF00C0F9),
                          ),
                          height: h * 0.08,
                          width: w * 0.42,
                          child: Center(
                            child: Text(
                              "First Half",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: w * 0.04,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.06,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                          ),
                          height: h * 0.08,
                          width: w * 0.42,
                          child: Center(
                            child: Text(
                              "Second Half",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: w * 0.04,
                                color: Color(0xFF00C0F9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "To Date",
                            style: GoogleFonts.poppins(
                                color: Color(0xFFC0C0C0), fontSize: w * 0.03),
                          ),
                          Container(
                            width: w * 0.9,
                            height: h * 0.06,
                            child: Theme(
                              data: ThemeData(
                                primaryColor: Color(0xFFEFEFEF),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.calendar_today,
                                    color: Colors.black,
                                  ),
                                  hintMaxLines: 1,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFEFEFEF),
                                    ),
                                  ),
                                  hintText: "27-07-2021",
                                  hintStyle: TextStyle(
                                    fontSize: w * 0.04,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            border: Border.all(
                              color: Color(0xFFECECEC),
                            ),
                          ),
                          height: h * 0.08,
                          width: w * 0.42,
                          child: Center(
                            child: Text(
                              "First Half",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: w * 0.04,
                                color: Color(0xFF00C0F9),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.06,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6.0),
                            color: Color(0xFF00C0F9),
                          ),
                          height: h * 0.08,
                          width: w * 0.42,
                          child: Center(
                            child: Text(
                              "Second Half",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: w * 0.04,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Claim Category",
                          style: GoogleFonts.poppins(
                            fontSize: w * 0.035,
                            color: Color(0xFFC0C0C0),
                          ),
                        ),
                        Container(
                          width: w * 0.9,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFEFEFEF),
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFEFEFEF),
                                ),
                              ),
                              hintMaxLines: 4,
                              hintText:
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy.",
                              hintStyle: TextStyle(fontSize: w * 0.032),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
