import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';

class CustomTextFoamField extends StatelessWidget {
  String? hintText;
  IconData? icon;

  CustomTextFoamField({required this.hintText, required this.icon,super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(

          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.text,width: 2),
            borderRadius: BorderRadius.circular(30.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.text,),
            borderRadius: BorderRadius.circular(30.r),

          ),

          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColor.text),
          prefixIcon: Container(
            margin: EdgeInsets.only(right: 20.w),
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: AppColor.white,
            ),
            child: Center(
                child: Icon(
              icon,
              size: 30,
              color: AppColor.background,
            )),
          )),
    );
  }
}
