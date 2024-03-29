

import 'package:company_manager_app/routes/app_routes.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  GlobalKey<SliderMenuContainerState> _key =
      new GlobalKey<SliderMenuContainerState>();
  
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SliderMenuContainer(
        isDraggable: true,
        hasAppBar: false,
        isTitleCenter: false,
        appBarColor: Colors.white,
        key: _key,
        sliderMenuOpenSize: 300,
        title: Row(
          children: [
            Text(
              "Welcome!",
              style: GoogleFonts.poppins(
                  fontSize: w * 0.045,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
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
        sliderMenu: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xFF0193E6),
                height: h * 0.16,
                child: Padding(
                  padding: EdgeInsets.only(left: w * 0.08, top: h * 0.04),
                  child: Container(
                    width: w * 0.8,
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
                        SizedBox(width: w * 0.03),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "John Smith",
                                style: GoogleFonts.poppins(
                                  fontSize: w * 0.04,
                                  fontWeight: FontWeight.w500,
                                  color: Appcolors.whitecolor,
                                ),
                              ),
                              Text(
                                "Co-Founder",
                                style: GoogleFonts.poppins(
                                  fontSize: w * 0.025,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF81C1F0),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Appcolors.primarycolor,
                  child: DrawerItem(),
                ),
              ),
            ],
          ),
        ),
        sliderMain: Container(
          height: h,
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: 233,
                  child: Image(
                    image: AssetImage(Common.assetsImages + "Union 44.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: h * 0.05,
                  left: w * 0.05,
                  child: Container(
                    child: Row(
                      children: [
                        Container(
                          height: h * 0.048,
                          width: w * 0.048,
                          child: Image(
                            image:
                                AssetImage(Common.assetsImages + "drawer.png"),
                          ),
                        ),
                        SizedBox(
                          width: w * 0.07,
                        ),
                        Text(
                          "Welcome!",
                          style: GoogleFonts.poppins(
                              fontSize: w * 0.045,
                              color: Appcolors.whitecolor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: w * 0.5,
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
                  top: h * 0.17,
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
                  top: h * 0.235,
                  left: w * 0.054,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "immigration",
                              cardText: "ATTENDANCE",
                              bottomRec: "blueRec",
                            ),
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Approutes.attendance);
                            },
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Approutes.leaveScreen);
                            },
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "logout 6",
                              cardText: "LEAVE",
                              bottomRec: "greyRec",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      Row(
                        children: [
                          InkWell(
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "Contacts",
                              cardText: "DIRECTORY",
                              bottomRec: "greyRec",
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, Approutes.directory);
                            },
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Approutes.claim);
                            },
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "clipboard",
                              cardText: "CLAIM",
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
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Approutes.profile);
                            },
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "user",
                              cardText: "PROFILE",
                              bottomRec: "blueRec",
                            ),
                          ),
                          SizedBox(
                            width: w * 0.05,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Approutes.salary);
                            },
                            child: CustomCard(
                              h: h,
                              w: w,
                              imgPath: "wallet",
                              cardText: "SALARY",
                              bottomRec: "greyRec",
                            ),
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
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.h,
    required this.w,
    required this.imgPath,
    this.cardText,
    this.bottomRec,
  }) : super(key: key);

  final double h;
  final double w;
  final String imgPath;
  final String? cardText;
  final String? bottomRec;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.h * 0.22,
      width: widget.w * 0.42,
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
                    Text(
                      "${widget.cardText}",
                      style: GoogleFonts.poppins(
                        fontSize: widget.w * 0.04,
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

class DrawerItem extends StatefulWidget {
  @override
  _DrawerItemState createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  List texts = [
    "Home",
    "My Attendance",
    "Profile",
    "My QR Code",
    "Change Password",
    "LogOut"
  ];

  List paths = ["Home", "calendar", "user2", "QRCODE", "Lock", "logout2"];
  List screenPaths = [
    Approutes.homeScreen,
    Approutes.myattendance,
    Approutes.profile
  ];
  List<bool> isHighlighted = [true, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(screenPaths[index]);
                for (var i = 0; i < isHighlighted.length; i++) {
                  setState(() {
                    if (index == i) {
                      // ignore: unnecessary_statements
                      isHighlighted[index] == true;
                    } else {
                      // ignore: unnecessary_statements
                      isHighlighted[i] == false;
                    }
                  });
                }
              },
              child: Container(
                color: isHighlighted[index]
                    ? Color(0xFF00A7EF)
                    : Color(0xff00B2F3),
                child: ListTile(
                  leading: Image.asset(
                    Common.assetsImages + "${paths[index]}.png",
                    width: w * 0.06,
                  ),
                  title: Text(
                    texts[index],
                    style: GoogleFonts.poppins(
                        fontSize: w * 0.038, color: Colors.white),
                  ),
                ),
              ),
            );
          },
          itemCount: texts.length,
        ),
        SizedBox(
          height: h * 0.3,
        ),
        Padding(
          padding: EdgeInsets.only(left: w * 0.05),
          child: Row(
            children: [
              Image.asset(
                Common.assetsImages + "facebook-logo.png",
                width: w * 0.03,
              ),
              SizedBox(
                width: w * 0.065,
              ),
              Image.asset(
                Common.assetsImages + "instagram-logo.png",
                width: w * 0.055,
              ),
              SizedBox(
                width: w * 0.065,
              ),
              Image.asset(
                Common.assetsImages + "twitter (20).png",
                width: w * 0.055,
              ),
            ],
          ),
        )
      ],
    );
  }
}
