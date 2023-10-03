import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Utils/app_images.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CustomStorageContainer extends StatelessWidget {
  const CustomStorageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 378.w,
          height: 116.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: AppColor.background),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  margin: EdgeInsets.only(right: 10.w,
                  ),
                  width: 55.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: AppColor.white),
                  child:
                      Center(child: Image(image: AssetImage(AppImages.zong_logo2))),
                ),
                title: Text("Free Storage",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.text)),
                      minVerticalPadding: 20.h,

                subtitle: Text("13.6 GB / 15 GB",
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.text)),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.w,right: 20.w,top: 10.h),
                child: LinearProgressIndicator(
                    minHeight: 5.h,
                    value: 0.8,
                    backgroundColor: AppColor.grey,
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColor.white,
                  ),
              ),

            ],
          ),
        ),

      ],
    );
  }
}
