import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Views/Login/login.dart';
import 'package:zong_app/Views/OTP/otp.dart';
import 'package:zong_app/Widgets/custom_container.dart';
import 'package:zong_app/Widgets/custom_text.dart';
import 'package:zong_app/Widgets/custom_textfoamfield.dart';


class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: Column(children: [
          SizedBox(height: 91.h,),
          CustomContainer(),
          SizedBox(height: 20.h,),
          CustomText(
              text: "Forgot Password!",
              fontSize: 20.sp,
              fontWeight: FontWeight.w600),
          SizedBox(height: 4.h,),
          CustomText(
              text:
                  "Provide your email & we will send you link to reset password",
              fontSize: 12.sp,
              fontWeight: FontWeight.w500),


               Padding(
                 padding:  EdgeInsets.only(top: 147.h,left: 55.w,right: 55.w),
                 child: CustomTextFoamField(
                    hintText: "Email", icon: Icons.email_outlined),
               ),

          Padding(
            padding:  EdgeInsets.only(top: 162.h,left: 55.w,right: 55.w),
            child: Container(
              width: 328.w,
              height: 50.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: AppColor.white),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => OTP(),));
                  },
                  child: Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.buttontext),
                    ),
                  )),
            ),
          ),
          SizedBox(height: 20.h,),
          GestureDetector(
            onTap: (){
              Navigator.pop(context, MaterialPageRoute(builder: (context) => Login(),));
            },
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Remembered Password?",
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
    ));
  }
}
