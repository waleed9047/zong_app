import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Utils/app_colors.dart';
import 'package:zong_app/Views/Forgot/forgot.dart';
import 'package:zong_app/Views/Home_page/home1.dart';
import 'package:zong_app/Views/Sign_up/sign_up.dart';
import 'package:zong_app/Widgets/custom_container.dart';
import 'package:zong_app/Widgets/custom_text.dart';
import 'package:zong_app/Widgets/custom_textfoamfield.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
            SizedBox(height: 20.h,),
            CustomText(
                text: "Welcome Back!",
                fontSize: 20.sp,
                fontWeight: FontWeight.w600),
            SizedBox(height: 4.h,),
            CustomText(
                text: "Login to your account",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
            SizedBox(height: 122.h,),
            CustomTextFoamField(
                hintText: "User Name", icon: Icons.account_circle_outlined),
            SizedBox(height: 25.h,),
            CustomTextFoamField(
                hintText: "Password", icon: Icons.lock_outline_rounded),
            Padding(
              padding:  EdgeInsets.only(top: 15.h,left: 215.w,),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot(),));
                },
                child: CustomText(
                    text: "Forgot Password?",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 90.h,),
            Container(
                width: 328.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    color: AppColor.white),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home1(),));
                    },
                    child: Center(
                        child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColor.buttontext),
                    )))),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Sign_up(),));
              },
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Sign_up(),));
                },
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Not have an account?",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: AppColor.text)),
                  TextSpan(

                      text: " Signup Now",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColor.text)),
                ])),
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
