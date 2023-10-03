import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Utils/app_images.dart';

class CustomContainer extends StatelessWidget {

   CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 186.w,
      height: 156.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.r),
      color:Colors.white,
      ),
      child: Center(child: Image(image: AssetImage(AppImages.zong_logo1))),
    );
  }
}
