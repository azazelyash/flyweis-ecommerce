import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


import '../CommonButton/common_button.dart';
import 'otp_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90.w, left: 10.w),
            child: Row(
              children: [
                InkWell(
                    onTap : () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 50.w,
                ),
                Text(
                  'Verification',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please Enter the following Details to\nVerify!',
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 18.sp,
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Email Address",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  side: BorderSide(
                    color: Colors.grey.shade200,
                  )),
              elevation: 2,
              child: TextFormField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 20.w, right: 20.w),
                  border: InputBorder.none,
                  hintText: "Enter Email Address",
                  hintStyle: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w200,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          CommonButton(
              color: const Color(0xffF5A302),
              title: "SEND OTP",
              height: 60.h,
              width: 340.w,
              fontSize: 18.sp,
              textColor: Colors.white,
              onPressed: () {
                Get.to(() =>  OtpScreen(),);
              })
        ],
      ),
    );
  }
}
