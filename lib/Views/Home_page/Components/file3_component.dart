import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Widgets/custom_text2.dart';

class File3Components extends StatelessWidget {
   File3Components({super.key});
final List data3 =[
  [Icon(Icons.image,color: AppColor.white),
    "Logo.png",
    "8:24 pm",
    ],
  [
    Icon(Icons.library_music_sharp,color: AppColor.white),
    "Music",
    "8:24 pm",
  ],
  [
    Icon(Icons.image,color: AppColor.white),
    "Logo.png",
    "8:24 pm",
  ],
  [
    Icon(Icons.library_music_sharp,color: AppColor.white),
    "Music",
    "8:24 pm",
  ],
];
  @override
  Widget build(BuildContext context) {
    return Container(
      height:300.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,mainAxisSpacing: 20,crossAxisSpacing: 20,),
          itemCount: data3.length,
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),

          itemBuilder: (context, index) {
            return SizedBox(
              child: Container(
                width: 182.w,

                // margin: EdgeInsets.only(top: 20.h),
                  color: AppColor.white,
                child: Padding(
                  padding:  EdgeInsets.only(left: 15.w,top: 15.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: EdgeInsets.only(left: 39.w),
                        width: 65.w,
                        height: 65.h,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),

                        color: AppColor.background,

                        ),
                        child: data3[index][0],
                      ),
                      SizedBox(height: 20.h,),
                      CustomText2(text: data3[index][1], fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColor.text1),
                      SizedBox(height: 4.h,),
                      CustomText2(text: data3[index][2], fontSize: 12.sp, fontWeight: FontWeight.w500, color: AppColor.grey),
                    ],
                  ),
                ),
              ),
            );
          },

      ),
    );
  }
}
