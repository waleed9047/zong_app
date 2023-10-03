import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText2 extends StatelessWidget {

  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
   CustomText2({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,


    super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight:fontWeight,
          color: color),
    );
  }
}
