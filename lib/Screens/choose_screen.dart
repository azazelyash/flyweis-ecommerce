import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_pritam_client_app/Screens/sign_in.dart';
import 'package:mr_pritam_client_app/Screens/verification_otp.dart';

import '../CommonButton/common_button.dart';

class ChoosePanel extends StatelessWidget {
  const ChoosePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, left: 20.w),
            child: Image.asset(
              "assets/images/logo.png",
              width: 80.w,
              height: 80.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 140.h),
            child: Image.asset(
              "assets/images/image1.gif",
              width: 230.w,
              height: 230.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 170.w, top: 250.h),
            child: Image.asset(
              "assets/images/cocktail.gif",
              width: 180.w,
              height: 180.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 170.w, top: 50.h),
            child: Image.asset(
              "assets/images/chef.gif",
              width: 180.w,
              height: 180.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 400.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Lorem ipsum",
                  style: GoogleFonts.poppins(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Text(
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    '''Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.''',
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Are you a Client or Staff?",
                  style: GoogleFonts.poppins(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.h),
                  child: CommonButton(
                    onPressed: () {},
                    color: const Color(0xffF5A302),
                    title: "STAFF",
                    height: 50.h,
                    width: 350.w,
                    textColor: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                CommonButton(
                  onPressed: () {
                    Get.dialog(
                      Dialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        child: SizedBox(
                          height: 450.h,
                          width: 300.w,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 30.w, left: 38, top: 35.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(),
                                        child: Text(
                                          "Client Registration",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.back();
                                      },
                                      child: const Icon(
                                        Icons.close,
                                        size: 30,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 20.h),
                                child: const Text(
                                  '''You work on the basis of a flexible on-call Contract. Decide for yourself where & when you work & how much . You’re not tied to anything''',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 18.w, top: 30.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_outlined,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Text("Your Insurance is covered")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_outlined,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Text(
                                            "We take care of your pension")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.check_outlined,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Text("You receive holiday pay")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20.h),
                                child: CommonButton(
                                  color: const Color(0xffF5A302),
                                  title: "CONTINUE",
                                  height: 45.h,
                                  width: 200.w,
                                  fontSize: 14.sp,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    Get.back();
                                    Get.to(
                                      () => const VerificationScreen(),
                                    );
                                  },
                                  // onPressed: () {
                                  //   Get.to(
                                  //     () => const VerificationScreen(),
                                  //     transition: Transition
                                  //         .rightToLeft, // Specify the desired transition
                                  //     duration: const Duration(
                                  //         milliseconds:
                                  //             500), // Customize transition duration
                                  //   );
                                  // },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  color: const Color(0xff1E2A39),
                  title: "CLIENT",
                  height: 50.h,
                  width: 350.w,
                  textColor: Colors.white,
                  fontSize: 16.sp,
                ),
                Divider(
                  color: Colors.black,
                  endIndent: 10.w,
                  indent: 10.w,
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => const SignInScreen(),
                      transition: Transition.fadeIn,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "Already have an account?",
                          style: GoogleFonts.poppins(
                            color: Colors.grey.shade500,
                            fontSize: 14.sp,
                          ),
                        ),
                        TextSpan(
                          text: " Sign In",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
