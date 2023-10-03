import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';

class File2_Component extends StatelessWidget {
  File2_Component({super.key});

  final List W2 = [
    [
      Icon(Icons.image,color: AppColor.white),
      "Logo.png",
      "8:24 pm",
      Icon(Icons.more_vert)
    ],
    [
      Icon(Icons.library_music_sharp,color: AppColor.white),
      "Music",
      "8:24 pm",
      Icon(Icons.more_vert)
    ],
    [
      Icon(Icons.library_music_sharp,color: AppColor.white),
      "Music",
      "8:24 pm",
      Icon(Icons.more_vert)
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height:400.h,
      width:378.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),),
      child: ListView.builder(
        scrollDirection: Axis.vertical,

        physics: BouncingScrollPhysics(),
        itemCount: W2.length,
        itemBuilder: (context, index) {
          return Container(
            height: 90.h,
            width: 378.w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r),color: AppColor.white),
            margin: EdgeInsets.only(bottom: 30.h),
            child: Padding(
              padding:  EdgeInsets.only(top: 10.h),
              child: ListTile(
                leading: Container(
                    width: 50.w,
                    height: 50.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColor.background),
                    child: W2[index][0],
                          // color: AppColor.text,
                ),
                title: Text(W2[index][1],
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.text1)),
                subtitle: Text(W2[index][2],
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColor.grey)),
                trailing: W2[index][3],
              ),
            ),
          );
        },
      ),
    );
  }
}
