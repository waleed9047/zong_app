import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Utils/app_images.dart';
import 'package:zong_app/Views/Home_page/Components/file2_component.dart';
import 'package:zong_app/Views/Home_page/Components/file_component.dart';
import 'package:zong_app/Views/Home_page/home2.dart';
import 'package:zong_app/Widgets/custom_storage_container.dart';
import 'package:zong_app/Widgets/custom_text.dart';
import 'package:zong_app/Widgets/custom_text2.dart';
import 'package:zong_app/Widgets/custom_textfoamfield.dart';
import 'package:zong_app/Widgets/custom_textfoamfield1.dart';

class Home1 extends StatelessWidget {
   Home1({super.key});



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      appBar: AppBar(
        backgroundColor: AppColor.white,
        leading: Image(image: AssetImage(AppImages.vector)),
        centerTitle: true,
        title: Text("Cloud-Tribe",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.text1)),
        actions: [Image(image: AssetImage(AppImages.man))],
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 25.w,right:25.w,top: 40.h),
        child: SingleChildScrollView(
          child: Column(children: [
            CustomTextfoamfield1(
                hintText: "Search Here",
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: AppColor.grey,
                )),
            SizedBox(height: 25.h,),
            const CustomStorageContainer(),
            Padding(
              padding:  EdgeInsets.only(top: 25.h,right: 324.w),
              child: CustomText2(
                  text: "Files",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColor.text1),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 15.h,right: 283.w),
              child: CustomText2(
                  text: "Last modified",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColor.grey),
            ),
               SizedBox(height: 20.h,),
             FileComponent(),
            SizedBox(height: 25.h,),
            Row(children: [
              CustomText2(text: "My Files", fontSize: 14.sp, fontWeight: FontWeight.w600, color: AppColor.pink),
              SizedBox(width: 30.h,),
              CustomText2(text: "Shared", fontSize: 14.sp, fontWeight: FontWeight.w500, color: AppColor.grey),
              Spacer(),
              Icon(Icons.grid_view)
            ],),
            SizedBox(height: 25.h),
            File2_Component(),
          ]),
        ),
      ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Home2(),));
            },
            child: Container(

              height: 72.h,
              width: 72.w,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(36.r),color: AppColor.background),
              child: Icon(Icons.add,color: AppColor.white,size: 36.sp),
            ),
          )
    ));
  }
}
