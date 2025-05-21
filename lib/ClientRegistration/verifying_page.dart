import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_pritam_client_app/ClientRegistration/successfully.dart';

class VerifyingPage extends StatefulWidget {
  const VerifyingPage({super.key});

  @override
  State<VerifyingPage> createState() => _VerifyingPageState();
}

class _VerifyingPageState extends State<VerifyingPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.to(
        () => const SuccessfullyScreen(),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Verifying....Please Wait!",
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: Get.height * 0.03,
              ),
              Image.asset(
                "assets/images/zkz.gif",
                height: 250,
                width: 250,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
