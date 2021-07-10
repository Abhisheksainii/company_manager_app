import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/common.dart';
import 'package:company_manager_app/utils/app_colors.dart';
import 'package:company_manager_app/routes/app_routes.dart';

class LoginPassword extends StatelessWidget {
  void _bottompressed(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Container(
            height: height * 0.35,
            child: Padding(
              padding: EdgeInsets.only(
                  left: width * 0.06, top: height * 0.036, right: width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            fontSize: height * 0.024,
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset(
                        Common.assetsImages + "cross.png",
                        width: width * 0.045,
                      ),
                    ],
                  ),
                  Text(
                    "Enter you register email address",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(accentColor: Colors.grey.shade500),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade500),
                        ),
                        labelStyle: new TextStyle(color: Colors.green),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Appcolors.lightprimarycolor,
                        ),
                        hintStyle: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: height * 0.016,
                            color: Colors.grey.shade500),
                        hintText: "Email Address here...",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Appcolors.lightprimarycolor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    height: height * 0.075,
                    child: Text(
                      "SEND",
                      style: TextStyle(
                          fontSize: height * 0.02,
                          color: Appcolors.whitecolor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Image.asset(Common.assetsImages + "bgcurve.png"),
            ),
            Padding(
              padding: EdgeInsets.only(left: w * 0.3, top: h * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: h * 0.028,
                      fontWeight: FontWeight.w700,
                      color: Appcolors.whitecolor,
                    ),
                  ),
                  SizedBox(
                    height: h * 0.03,
                  ),
                  Container(
                    height: h * 0.2,
                    width: w * 0.4,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: Colors.white70, width: w * 0.04),
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: h * 0.35, left: w * 0.1),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          fontSize: h * 0.03, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    Text(
                      "Subdomain",
                      style: TextStyle(
                          fontSize: h * 0.018,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff00C0F9)),
                    ),
                    Container(
                      width: w * 0.8,
                      child: TextField(
                        style: TextStyle(fontSize: h * 0.023),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Text(
                      "Subdomain",
                      style: TextStyle(
                          fontSize: h * 0.018,
                          fontWeight: FontWeight.w600,
                          color: Color(0xfff00C0F9)),
                    ),
                    Container(
                      width: w * 0.8,
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: h * 0.023),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color(0xfff00C0F9),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        height: h * 0.065,
                        width: w * 0.3,
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: h * 0.02,
                              color: Appcolors.whitecolor,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Row(
                      children: [
                        Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                        InkWell(
                          onTap: () {
                            _bottompressed(context);
                          },
                          child: Text(
                            "Tap Here",
                            style:
                                TextStyle(color: Appcolors.lightprimarycolor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: w * 0.245,
              bottom: -h * 0.11,
              child: Image.asset(
                Common.assetsImages + "world.png",
                width: w * 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
