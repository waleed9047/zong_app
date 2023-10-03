import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Views/Login/login.dart';
import 'package:zong_app/Widgets/custom_container.dart';
import 'package:zong_app/Widgets/custom_text.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: 50.w,right: 50.w),
          child: Column(children: [
            SizedBox(height: 91.h,),
            CustomContainer(),
            SizedBox(height: 20.h,),
            CustomText(text: "Forgot Password!", fontSize: 20.sp, fontWeight: FontWeight.w600),
            SizedBox(height: 4.h,),
            CustomText(text: "Enter OTP we have send it to your Email you entered", fontSize: 12.sp, fontWeight: FontWeight.w500),
            Padding(
              padding:  EdgeInsets.only(top: 93.h,right: 235.w),
              child: CustomText(text: "Enter OTP", fontSize: 16.sp, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16.h,),
            const Pinput(
              keyboardType: TextInputType.phone,
              length: 4,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            ),
            SizedBox(height: 161.h,),
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
                      "RESET",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.buttontext),
                    ),
                  )),
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
      ),
    ));
  }
}
