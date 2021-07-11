import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:timelines/timelines.dart';
import 'package:timeline_widget/timeline_widget.dart';

class ProfileScreen extends StatelessWidget {
  List<String> personalheading = [
    "Date of Birth",
    "Nationality",
    "National ID",
    "Emails"
  ];
  List<String> personalinfo = [
    "01-04-1983",
    "Bangladeshi",
    "12345",
    "S.HASAN@viatele"
  ];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Image.asset(Common.assetsImages + "Rectangle.png"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: w * 0.05, vertical: h * 0.025),
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
                        "Profile",
                        style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            color: Appcolors.whitecolor,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Image.asset(
                    Common.assetsImages + "bell.png",
                    width: w * 0.06,
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
              padding: EdgeInsets.only(top: h * 0.28),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                padding: const EdgeInsets.all(8.0),
                width: w * 1,
                height: h * 0.8,
                child: ContainedTabBarView(
                  tabBarProperties: TabBarProperties(
                    height: h * 0.08,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.grey[400],
                    labelColor: Appcolors.lightprimarycolor,
                    background: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            color: Colors.grey.shade300, width: w * 0.001),
                      ),
                    ),
                  ),
                  tabs: [
                    Icon(
                      Icons.person,
                      size: 30,
                    ),
                    Icon(
                      Icons.wallet_travel_rounded,
                      size: 30,
                    ),
                    Icon(
                      Icons.more_horiz,
                      size: 40,
                    ),
                  ],
                  views: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.08, top: h * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PERSONAL",
                              style: TextStyle(
                                  fontSize: h * 0.026,
                                  color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Blood Group",
                                      info: "A +",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Mobile Number",
                                      info: "+880 1832366165",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Religion",
                                      info: "Islam",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Appcolors
                                                      .lightprimarycolor,
                                                  width: w * 0.004)),
                                          alignment: Alignment.center,
                                          child: Container(
                                            child: Image.asset(
                                              Common.assetsImages + "dot.png",
                                              width: w * 0.035,
                                            ),
                                            width: w * 0.04,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.transparent,
                                                    width: w * 0.008)),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: h * 0.02, left: w * 0.02),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "AB -",
                                            style: TextStyle(
                                                fontSize: h * 0.022,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Blood Group",
                                            style: TextStyle(
                                                fontSize: h * 0.016,
                                                color: Colors.grey.shade500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: w * 0.08, top: h * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "OFFICALS",
                                style: TextStyle(
                                    fontSize: h * 0.026,
                                    color: Colors.grey.shade500),
                              ),
                              SizedBox(
                                height: h * 0.02,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "Date of Birth",
                                        info: "01 - 04 - 1983",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "Nationality",
                                        info: "Active",
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "National ID",
                                        info: "Not Define",
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "Emails",
                                        info: "HR & Admin",
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "National ID",
                                        info: "Co founder & Chief Operations",
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Timelinee(w: w, h: h),
                                      timelineinfo(
                                        h: h,
                                        w: w,
                                        head: "National ID",
                                        info: "Co founder & Chief Operations",
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Appcolors
                                                        .lightprimarycolor,
                                                    width: w * 0.004)),
                                            alignment: Alignment.center,
                                            child: Container(
                                              child: Image.asset(
                                                Common.assetsImages + "dot.png",
                                                width: w * 0.035,
                                              ),
                                              width: w * 0.04,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      color: Colors.transparent,
                                                      width: w * 0.008)),
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: h * 0.02, left: w * 0.02),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "AB -",
                                              style: TextStyle(
                                                  fontSize: h * 0.022,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              "Blood Group",
                                              style: TextStyle(
                                                  fontSize: h * 0.016,
                                                  color: Colors.grey.shade500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(left: w * 0.08, top: h * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "OTHER",
                              style: TextStyle(
                                  fontSize: h * 0.026,
                                  color: Colors.grey.shade500),
                            ),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Blood Group",
                                      info: "A +",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Mobile Number",
                                      info: "+880 1832366165",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Timelinee(w: w, h: h),
                                    timelineinfo(
                                      h: h,
                                      w: w,
                                      head: "Religion",
                                      info: "Islam",
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color: Appcolors
                                                      .lightprimarycolor,
                                                  width: w * 0.004)),
                                          alignment: Alignment.center,
                                          child: Container(
                                            child: Image.asset(
                                              Common.assetsImages + "dot.png",
                                              width: w * 0.035,
                                            ),
                                            width: w * 0.04,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.transparent,
                                                    width: w * 0.008)),
                                            alignment: Alignment.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: h * 0.02, left: w * 0.02),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "AB -",
                                            style: TextStyle(
                                                fontSize: h * 0.022,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "Blood Group",
                                            style: TextStyle(
                                                fontSize: h * 0.016,
                                                color: Colors.grey.shade500),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  onChange: (index) => print(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class timelineinfo extends StatelessWidget {
  const timelineinfo(
      {Key key, @required this.h, @required this.w, this.head, this.info})
      : super(key: key);
  final String head;
  final String info;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: h * 0.065, left: w * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            info,
            style: TextStyle(fontSize: h * 0.022, fontWeight: FontWeight.w600),
          ),
          Text(
            head,
            style: TextStyle(fontSize: h * 0.016, color: Colors.grey.shade500),
          )
        ],
      ),
    );
  }
}

class Timelinee extends StatelessWidget {
  const Timelinee({
    Key key,
    @required this.w,
    @required this.h,
  }) : super(key: key);

  final double w;
  final double h;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Appcolors.lightprimarycolor, width: w * 0.004)),
          alignment: Alignment.center,
          child: Container(
            child: Image.asset(
              Common.assetsImages + "dot.png",
              width: w * 0.035,
            ),
            width: w * 0.04,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: Colors.transparent, width: w * 0.008)),
            alignment: Alignment.center,
          ),
        ),
        Image.asset(
          Common.assetsImages + "line.png",
          height: h * 0.08,
        ),
      ],
    );
  }
}
