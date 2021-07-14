import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:company_manager_app/utils/TileColor.dart';

class TileSetting {
  String tilecolor;
  bool iseditable;
  TileSetting({this.tilecolor, this.iseditable});
}

class ApproveApplication extends StatelessWidget {
  List<TileSetting> tilesettings = [
    TileSetting(tilecolor: "green", iseditable: false),
    TileSetting(tilecolor: "blue", iseditable: false),
    TileSetting(tilecolor: "blue", iseditable: true),
    TileSetting(tilecolor: "blue", iseditable: false),
    TileSetting(tilecolor: "gold", iseditable: false),
    TileSetting(tilecolor: "gold", iseditable: false),
    TileSetting(tilecolor: "green", iseditable: false),
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
      backgroundColor: Color(0xffF3F3F3),
      body: Container(
        child: Column(children: [
          Container(
            width: w * 1,
            height: 113,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Common.assetsImages + "Union 45.png"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: w * 0.04, top: h * 0.04),
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
                        "Approve Application",
                        style: GoogleFonts.poppins(
                            fontSize: w * 0.045,
                            color: Appcolors.whitecolor,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: w * 0.18,
                      ),
                      SizedBox(
                        width: w * 0.07,
                      ),
                      Image.asset(
                        Common.assetsImages + "search.png",
                        width: w * 0.06,
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
                                    fontSize: h * 0.019),
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
                              right: 12.0, top: h * 0.054, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "21 June,2021",
                                    style: TextStyle(
                                        fontSize: h * 0.013,
                                        color: Colors.grey.shade500),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.058),
                              Row(
                                children: [
                                  Image.asset(
                                    Common.assetsImages + "greentick.png",
                                    width: w * 0.045,
                                  ),
                                  SizedBox(
                                    width: w * 0.01,
                                  ),
                                  Text(
                                    "Approve Application",
                                    style: TextStyle(
                                        fontSize: h * 0.0125,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff02D07E)),
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
    );
  }
}
