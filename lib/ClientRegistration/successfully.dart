import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_pritam_client_app/NavBaarController/bottom_navbaar.dart';

class SuccessfullyScreen extends StatefulWidget {
  const SuccessfullyScreen({super.key});

  @override
  State<SuccessfullyScreen> createState() => _SuccessfullyScreenState();
}

class _SuccessfullyScreenState extends State<SuccessfullyScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.off(
        () => const BottomNavbaar(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 500),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your Account has been",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Text(
                "Successfully Created!",
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff53A654)),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Image.asset(
                "assets/images/verify.gif",
              ),
              Text(
                "Our Team member will contact you for \nfurther assistance!",
                textAlign: TextAlign.center,
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
