import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TileSettings {
  String tilecolor;
  bool iseditable;
  TileSettings({this.tilecolor, this.iseditable});
}

class LeaveApplication extends StatelessWidget {
  final titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  List<TileSettings> tilesettings = [
    TileSettings(tilecolor: "green", iseditable: false),
    TileSettings(tilecolor: "blue", iseditable: false),
    TileSettings(tilecolor: "blue", iseditable: true),
    TileSettings(tilecolor: "blue", iseditable: false),
    TileSettings(tilecolor: "gold", iseditable: false),
    TileSettings(tilecolor: "gold", iseditable: false),
    TileSettings(tilecolor: "green", iseditable: false),
  ];
  Color TileColor(int index) {
    if (tilesettings[index].tilecolor == "green") {
      return Colors.green;
    } else if (tilesettings[index].tilecolor == "blue") {
      return Colors.blue;
    } else {
      return Appcolors.goldcolor;
    }
  }

  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF3F3F3),
      body: SafeArea(
        child: Container(
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
                          "Leave Application",
                          style: GoogleFonts.poppins(
                              fontSize: w * 0.045,
                              color: Appcolors.whitecolor,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: w * 0.18,
                        ),
                        Image.asset(
                          Common.assetsImages + "search.png",
                          width: w * 0.06,
                        ),
                        SizedBox(
                          width: w * 0.07,
                        ),
                        Image.asset(
                          Common.assetsImages + "bell.png",
                          width: w * 0.05,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  padding: EdgeInsets.all(10.0),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: tilesettings.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(h * 0.014),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Tile(h: h, w: w, colr: TileColor(index)),
                                SizedBox(
                                  height: h * 0.006,
                                ),
                                Text(
                                  "Sick Leave Request",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: h * 0.018),
                                ),
                                SizedBox(
                                  height: h * 0.002,
                                ),
                                Text(
                                  "Mirpur, DOMS, 21 June 2021",
                                  style: TextStyle(
                                      color: Colors.grey.shade500,
                                      fontSize: h * 0.012),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Text(
                                  "Approver",
                                  style: TextStyle(
                                      color: Color(0xff025DD0),
                                      fontSize: h * 0.0115,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: h * 0.001,
                                ),
                                Text(
                                  "Shafiul Hasan",
                                  style: TextStyle(fontSize: h * 0.014),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                right: 10.0, top: h * 0.054, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "5.0",
                                      style: TextStyle(
                                          fontSize: h * 0.018,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "(Annual)",
                                      style: TextStyle(
                                          fontSize: h * 0.013,
                                          color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "21 June,2021",
                                      style: TextStyle(
                                          fontSize: h * 0.013,
                                          color: Colors.grey.shade500),
                                    ),
                                    SizedBox(
                                      width: w * 0.01,
                                    ),
                                    Text(
                                      "Apply Date",
                                      style: TextStyle(
                                          color: Appcolors.lightprimarycolor,
                                          fontSize: h * 0.013,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                SizedBox(height: h * 0.02),
                                Row(
                                  children: [
                                    Visibility(
                                      child: Image.asset(
                                        Common.assetsImages + "editbox.png",
                                        width: w * 0.065,
                                      ),
                                      visible: tilesettings[index].iseditable
                                          ? true
                                          : false,
                                    ),
                                    SizedBox(width: w * 0.02),
                                    Image.asset(
                                      Common.assetsImages + "eyebox.png",
                                      width: w * 0.065,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({Key key, @required this.h, @required this.w, this.colr})
      : super(key: key);

  final double h;
  final double w;
  final Color colr;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colr, borderRadius: BorderRadius.all(Radius.circular(20))),
      height: h * 0.028,
      width: w * 0.16,
      alignment: Alignment.center,
      child: Center(
          child: Text(
        "Tile Name",
        style: TextStyle(
            fontSize: h * 0.011,
            color: Appcolors.whitecolor,
            fontWeight: FontWeight.w700),
      )),
    );
  }
}
