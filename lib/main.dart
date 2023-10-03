import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zong_app/Views/Forgot/forgot.dart';
import 'package:zong_app/Views/Home_page/home2.dart';
import 'package:zong_app/Views/Login/login.dart';
import 'package:zong_app/Views/OTP/otp.dart';
import 'package:zong_app/Views/Sign_up/sign_up.dart';
import 'package:zong_app/Views/Splash_screen/splash_screen.dart';

import 'Views/Home_page/home1.dart';

void main(){
  runApp(Zong_app());
}
class Zong_app extends StatelessWidget {
  const Zong_app({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(428,926),
    builder: (context, child) {
      return  MaterialApp(
        title: "Zong_app",
        home: Home2(),

      );
    },
    );

  }
}
