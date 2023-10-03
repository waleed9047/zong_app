import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Views/Login/login.dart';
import 'package:zong_app/Widgets/custom_container.dart';
import 'package:zong_app/Widgets/custom_text.dart';
import 'package:zong_app/Widgets/custom_textfoamfield.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: 50.w,right: 50.w),
          child: Column(children: [
            SizedBox(height: 91.h,),
            CustomContainer(),
            SizedBox(height: 4.h,),
            CustomText(
                text: "SIGN UP!", fontSize: 20.sp, fontWeight: FontWeight.w600),
            SizedBox(height: 4.h,),
            CustomText(
                text: "Create an account",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
            SizedBox(height: 78.h,),
            CustomTextFoamField(
                hintText: "User Name", icon: Icons.account_circle_outlined),
            SizedBox(height: 26.h,),
            CustomTextFoamField(hintText: "Email", icon: Icons.email_outlined),
            SizedBox(height: 25.h,),
            CustomTextFoamField(
                hintText: "Password", icon: Icons.lock_outline_rounded),
            SizedBox(height: 81.h,),
            Container(
                width: 328.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColor.white),
                child: TextButton(
                    onPressed: () {},
                    child: Center(
                        child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.buttontext),
                    )))),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => Login(),));
              },
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Already have an account?",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColor.text)),
                    TextSpan(
                        text: " Login Now",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColor.text)),
                  ])),
            ),
          ]),
        ),
      ),
    ));
  }
}
