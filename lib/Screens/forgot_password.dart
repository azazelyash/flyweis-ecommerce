import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../CommonButton/common_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h, left: 10.w, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                      child: const Icon(Icons.arrow_back_ios)),
                  Text(
                    "Forgot Password",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 18.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height * 0.1,
              ),
              Image.asset(
                "assets/images/password.png",
                height: 170,
                width: 170,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.05,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Please provide your Registered Email to \ncontinue the process",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: Get.height * 0.02,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '''We will send you the link to reset your password on your email from which you have registered your account''',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 13.sp, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                  Text(
                    "Email Address",
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        hintText: "Enter Email Address",
                        hintStyle: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w200, fontSize: 14.sp),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.07,
                  ),
                  CommonButton(
                    title: "SEND LINK",
                    color: const Color(0xffF5A302),
                    height: 55,
                    width: 350,
                    fontSize: 18.sp,
                    textColor: Colors.white,
                    onPressed: () {
                      Get.dialog(
                        Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          backgroundColor: Colors.white,
                          child: SizedBox(
                            height: 450.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Reset Link  has been",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Successfully Sent!",
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff53A654)),
                                ),
                                Image.asset("assets/images/verify.gif"),
                                CommonButton(
                                  title: "LOG IN",
                                  color: const Color(0xffF5A302),
                                  height: 55,
                                  width: 250,
                                  fontSize: 18.sp,
                                  textColor: Colors.white,
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: Get.height * 0.02,
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Didn’t got any Link? ",
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w200,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Try Again",
                                          style: GoogleFonts.plusJakartaSans(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: Get.height * 0.04,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
