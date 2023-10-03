import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';


class CustomText extends StatelessWidget {
  String text;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
   CustomText({
     required this.text,
     required this.fontSize,
     required this.fontWeight,
     this.color,

     super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(text,
    style: TextStyle(
      fontSize: fontSize,
      fontWeight:fontWeight,
      color:AppColor.text,
    ),
    );
  }
}
