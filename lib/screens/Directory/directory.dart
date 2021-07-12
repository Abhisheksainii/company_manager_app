import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/utils/TileColor.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class TileSettingsss {
  String tilecolor;

  TileSettingsss({this.tilecolor});
}

class Directory extends StatelessWidget {
  List<TileSettingsss> tilesettings = [
    TileSettingsss(tilecolor: "green"),
    TileSettingsss(tilecolor: "blue"),
    TileSettingsss(tilecolor: "blue"),
    TileSettingsss(tilecolor: "blue"),
    TileSettingsss(tilecolor: "gold"),
    TileSettingsss(tilecolor: "gold"),
    TileSettingsss(tilecolor: "green"),
    TileSettingsss(tilecolor: "gold"),
  ];
  Color TileColor(int index) {
    if (tilesettings[index].tilecolor == "green") {
      return Color(0xff02D07E);
    } else if (tilesettings[index].tilecolor == "blue") {
      return Appcolors.lightprimarycolor;
    } else {
      return Appcolors.goldcolor;
    }
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
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
                            "Directory",
                            style: GoogleFonts.poppins(
                                fontSize: w * 0.045,
                                color: Appcolors.whitecolor,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: w * 0.38,
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
                child: ListView.separated(
                  itemCount: tilesettings.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: const Divider(
                      thickness: 1,
                      color: Color(0xffDCDCDC),
                    ),
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Container(
                        padding: EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: w * 0.08,
                                  child: Image.asset(
                                      Common.assetsImages + "Ellipse 10.png"),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: w * 0.01),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Shafiul Hasan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Co - Founder",
                                    style: TextStyle(
                                        fontSize: h * 0.013,
                                        color: Colors.grey.shade500),
                                  ),
                                  SizedBox(
                                    height: h * 0.01,
                                  ),
                                  Tile(
                                    h: h,
                                    w: w,
                                    colr: TileColor(index),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.28, bottom: h * 0.04),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        Common.assetsImages + "greenphone.png",
                                        width: w * 0.08,
                                      ),
                                      SizedBox(
                                        width: w * 0.04,
                                      ),
                                      Image.asset(
                                        Common.assetsImages + "bluemail.png",
                                        width: w * 0.08,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
