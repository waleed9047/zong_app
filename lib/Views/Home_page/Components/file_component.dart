import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Utils/app_images.dart';

class FileComponent extends StatelessWidget {
  FileComponent({super.key});
  final List data = [
    [AppImages.folder, "UI Designs", "8:24 pm", AppColor.light_green],
    [AppImages.folder, "Flutter", "8:23 pm", AppColor.light_pink],
    [AppImages.folder, "Laravel", "8:23 pm", AppColor.light_green],
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175.h,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: 140.w,
            height: 175.h,
            margin: EdgeInsets.only(right: 20.w),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: data[index][3],),

            child: Padding(
              padding: EdgeInsets.only(left:20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Image(
                      image: AssetImage(data[index][0]),
                      width: 24.w,
                      height: 24.w),

                  Padding(
                    padding:  EdgeInsets.only(top: 70.h,),
                    child: Text(
                      data[index][1],
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.text1),
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                    data[index][2],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
