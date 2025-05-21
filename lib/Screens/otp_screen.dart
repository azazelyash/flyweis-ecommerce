import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../ClientRegistration/client_registration.dart';
import '../CommonButton/common_button.dart';

class OtpScreen extends StatelessWidget {
  final int otpLength = 4;
  final List<TextEditingController> controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> focusNode = List.generate(
    4,
    (_) => FocusNode(),
  );
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.w, left: 10.w),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
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
            SizedBox(
              height: 50.h,
            ),
            Image.asset(
              "assets/images/otp.png",
              height: 150,
              width: 150,
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verification Code Sent',
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w800,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Please Enter  Verification Code  sent to you Mail",
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w500,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Sent to    lorem........ipsum@gmail.com",
              style: GoogleFonts.plusJakartaSans(
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                otpLength,
                (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: SizedBox(
                    width: 60.w,
                    // height: 40.h,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        counterText: "",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0.r),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide(
                            color: Color(0xffF5A302),
                          ),
                        ),
                      ),
                      controller: controllers[index],
                      focusNode: focusNode[index],
                      cursorColor: Colors.black,
                      onChanged: (value) {
                        if (value.length == 1) {
                          if (index < otpLength - 1) {
                            FocusScope.of(context)
                                .requestFocus(focusNode[index + 1]);
                          } else {
                            FocusScope.of(context).unfocus();
                          }
                        } else if (value.isEmpty) {
                          if (index > 0) {
                            FocusScope.of(context)
                                .requestFocus(focusNode[index - 1]);
                          }
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(left: 200.w, top: 15.h),
                child: Text(
                  "RESEND OTP",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w800,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            CommonButton(
                color: const Color(0xffF5A302),
                title: "VERIFY",
                height: 60.h,
                width: 340.w,
                fontSize: 18.sp,
                textColor: Colors.white,
                onPressed: () {
                  Get.to(()=> ClientRegistration(),
                  transition: Transition.fadeIn
                  );
                })
          ],
        ),
      ),
    );
  }
}
