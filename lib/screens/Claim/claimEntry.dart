import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';

class ClaimEntry extends StatefulWidget {
  @override
  _ClaimEntryState createState() => _ClaimEntryState();
}

class _ClaimEntryState extends State<ClaimEntry> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
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
                          "Claim Entry",
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
                    Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Claim Category",
                                style: GoogleFonts.poppins(
                                    color: Color(0xFFC0C0C0),
                                    fontSize: w * 0.03),
                              ),
                              Container(
                                width: w * 0.43,
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
                        SizedBox(width: w * 0.04),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Claim Category",
                                style: GoogleFonts.poppins(
                                    color: Color(0xFFC0C0C0),
                                    fontSize: w * 0.03),
                              ),
                              Container(
                                width: w * 0.43,
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
                      ],
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Claim Category",
                                style: GoogleFonts.poppins(
                                    color: Color(0xFFC0C0C0),
                                    fontSize: w * 0.03),
                              ),
                              Container(
                                width: w * 0.43,
                                child: Theme(
                                  data: ThemeData(
                                    primaryColor: Color(0xFFEFEFEF),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintMaxLines: 1,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFEFEFEF),
                                        ),
                                      ),
                                      hintText: "2500",
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
                        SizedBox(width: w * 0.04),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Claim Category",
                                style: GoogleFonts.poppins(
                                    color: Color(0xFFC0C0C0),
                                    fontSize: w * 0.03),
                              ),
                              Container(
                                width: w * 0.43,
                                child: Theme(
                                  data: ThemeData(
                                    primaryColor: Color(0xFFEFEFEF),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintMaxLines: 1,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFEFEFEF),
                                        ),
                                      ),
                                      hintText: "2200",
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
                    SizedBox(
                      height: h * 0.02,
                    ),
                    DottedBorder(
                      borderType: BorderType.RRect,
                      radius: Radius.circular(10.0),
                      dashPattern: [6.5, 3, 6.5, 3],
                      color: Color(0xFFD8D8D8),
                      child: Container(
                        height: h * 0.18,
                        width: w * 0.88,
                        child: Center(
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  Common.assetsImages + "upload.png",
                                  width: w * 0.2,
                                ),
                                Text(
                                  "Attach your Files",
                                  style: GoogleFonts.poppins(
                                    color: Color(0xFFA8A8A8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Container(
                      width: w * 0.9,
                      height: h * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Color(0xFF00C0F9),
                      ),
                      child: Center(
                        child: Text(
                          "Submit",
                          style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            color: Colors.white,
                          ),
                        ),
                      ),
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
