import 'package:flutter/material.dart';
import 'package:company_manager_app/utils/app_colors.dart';

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
