import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAttendence extends StatefulWidget {
  @override
  _MyAttendenceState createState() => _MyAttendenceState();
}

class _MyAttendenceState extends State<MyAttendence> {
  List items = [30, 29, 28, 27, 26, 25, 24, 22, 22, 2];
  List state = [
    "Attendance",
    "Absent",
    "Attendance",
    "Attendance",
    "Attendance",
    "Attendance",
    "Attendance",
    "Absent",
    "Absent",
    "Absent",
  ];
  List colors = [
    Color(0xFF02D07E),
    Color(0xFFFF4B4B),
    Color(0xFF02D07E),
    Color(0xFF02D07E),
    Color(0xFF02D07E),
    Color(0xFF02D07E),
    Color(0xFF02D07E),
    Color(0xFFFF4B4B),
    Color(0xFFFF4B4B),
    Color(0xFFFF4B4B),
  ];
  List time1 = [
    "09:00",
    "_:__",
    "09:30",
    "09:00",
    "09:00",
    "09:00",
    "09:00",
    "_:__",
    "_:__",
    "_:__",
  ];
  List time2 = [
    "18:00",
    "_:__",
    "18:00",
    "18:00",
    "18:00",
    "18:00",
    "18:00",
    "_:__",
    "_:__",
    "_:__",
  ];
  List time3 = [
    "01:00",
    "_:__",
    "01:00",
    "01:00",
    "01:00",
    "01:00",
    "01:00",
    "_:__",
    "_:__",
    "_:__",
  ];

  List colors2 = [
    Color(0xFF00C0F9),
    Color(0xFF707070),
    Color(0xFF00C0F9),
    Color(0xFF00C0F9),
    Color(0xFF00C0F9),
    Color(0xFF00C0F9),
    Color(0xFF00C0F9),
    Color(0xFF707070),
    Color(0xFF707070),
    Color(0xFF707070),
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              width: w * 1,
              height: 113,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Common.assetsImages + "Union 45.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: h * 0.04, left: w * 0.04),
                child: Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          child: Image(
                            image: AssetImage(Common.assetsImages + "back.png"),
                            width: w * 0.07,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.04,
                      ),
                      Container(
                        child: Text(
                          "My Attendance",
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
                color: Colors.white,
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.05, bottom: h * 0.01),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "2021/12/${items[index]}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Container(
                                      width: w * 0.22,
                                      height: h * 0.03,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        color: colors[index],
                                      ),
                                      child: Center(
                                        child: Text(
                                          state[index],
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: w * 0.025),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Container(
                                      child: Text(
                                        time1[index],
                                        style: TextStyle(
                                            color: Color(0xFF02D07E),
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.035),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Container(
                                      child: Text(
                                        time2[index],
                                        style: TextStyle(
                                            color: Color(0xFFFF4B4B),
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.035),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Container(
                                      child: Text(
                                        time3[index],
                                        style: TextStyle(
                                            color: Color(0xFF707070),
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.035),
                                      ),
                                    ),
                                    SizedBox(
                                      width: w * 0.08,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: colors2[index],
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                      height: h * 0.035,
                                      width: w * 0.064,
                                      child: Center(
                                        child: Image.asset(
                                          Common.assetsImages + "eye.png",
                                          width: w * 0.05,
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
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: items.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
