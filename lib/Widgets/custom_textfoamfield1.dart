import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';

class CustomTextfoamfield1 extends StatelessWidget {
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  CustomTextfoamfield1(
      {required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: AppColor.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24.r),
            borderSide: BorderSide(color: AppColor.grey)
        ),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 12.sp, fontWeight: FontWeight.w400, color: AppColor.grey),
        prefixIcon: prefixIcon, //Icon(prefixIcon,color: AppColor.grey),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
