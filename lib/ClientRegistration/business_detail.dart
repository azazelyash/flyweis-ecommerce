import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:mr_pritam_client_app/ClientRegistration/payment_detail.dart';

import '../CommonButton/common_button.dart';

class BusinessDetail extends StatelessWidget {
  String? selectedValue = "Select Business Type";
  BusinessDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Client Registration",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.dialog(Dialog(
                            child: SizedBox(
                              height: 400,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/info.png",
                                    height: 100,
                                    width: 100,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  Text(
                                    "Are you sure want to cancel \nyour Registration Process?",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  CommonButton(
                                      color: const Color(0xffF5A302),
                                      title: "CANCEL PROCESS",
                                      height: 55,
                                      width: 250,
                                      fontSize: 16.sp,
                                      textColor: Colors.white,
                                      onPressed: () {}),
                                  SizedBox(
                                    height: Get.height * 0.02,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    // onHorizontalDragCancel: () {
                                    //   Get.back();
                                    // },
                                    child: Text(
                                      "< Return",
                                      style: GoogleFonts.plusJakartaSans(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
                        },
                        child: const Icon(
                          Icons.close,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "CREDENTIALS",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        color: const Color(0xffF5A302),
                      ),
                    ),
                    Text(
                      "BUSINESS",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        color: const Color(0xffF5A302),
                      ),
                    ),
                    const Text("PAYMENT"),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: LinearProgressBar(
                        minHeight: 10,
                        currentStep: 2,
                        maxSteps: 3,
                        borderRadius: BorderRadius.circular(10.r),
                        backgroundColor: Colors.white,
                        progressColor: const Color(0xffF5A302),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "BUSINESS DETAILS",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                const Divider(
                  endIndent: 20,
                  indent: 20,
                  color: Colors.black,
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Business Name",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        shadowColor: Colors.grey.shade500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Lorem Ipsum",
                            hintStyle: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w200, fontSize: 14.sp),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "Business Type",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        shadowColor: Colors.grey.shade500,
                        child: DropdownButtonFormField(
                          decoration: InputDecoration(
                            hintText: "Select Business Type",
                            hintStyle: GoogleFonts.plusJakartaSans(
                              fontWeight: FontWeight.w200,
                              fontSize: 14.sp,
                            ),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                          ),
                          value: selectedValue,
                          icon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 40,
                            color: Colors.grey,
                          ),
                          items: [
                            DropdownMenuItem(
                              value: "Select Business Type",
                              child: Text(
                                "Select Business Type",
                                style: GoogleFonts.plusJakartaSans(
                                  fontWeight: FontWeight.w200,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            const DropdownMenuItem(
                              value: "Bars",
                              child: Text("Bar"),
                            ),
                            const DropdownMenuItem(
                              value: "Restaurant",
                              child: Text("Restaurant"),
                            ),
                            const DropdownMenuItem(
                              value: "Hotel",
                              child: Text("Hotel"),
                            ),
                          ],
                          onChanged: (val) {
                            // Handle value change
                          },
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "Business Type",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Card(
                        elevation: 2,
                        shadowColor: Colors.grey.shade500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: SizedBox(
                          height: 157,
                          width: 354,
                          child: TextFormField(
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 10),
                              hintText: "Enter text here...",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade400, fontSize: 14),
                            ),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "Business Address",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Row(
                        children: [
                          Text(
                            "Street 1",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: Text(
                              "Street 2",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Row(
                        children: [
                          Text(
                            "Town",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 130),
                            child: Text(
                              "Landmark ",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "(OPTIONAL)",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "City",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        shadowColor: Colors.grey.shade500,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Lorem Ipsum",
                            hintStyle: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w200, fontSize: 14.sp),
                            border: InputBorder.none,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Row(
                        children: [
                          Text(
                            "Country",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: Text(
                              "Post Code ",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              shadowColor: Colors.grey.shade500,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Enter Lorem Ipsum",
                                  hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 14.sp),
                                  border: InputBorder.none,
                                  contentPadding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         CommonButton(
                           color: const Color(0xff1E2A39),
                           title: "< GO BACK",
                           height: 55,
                           width: 156,
                           fontSize: 18.sp,
                           textColor: Colors.white,
                           onPressed: () {
                             Get.back();
                           },
                         ),
                         CommonButton(
                           color: const Color(0xffF5A302),
                           title: "CONTINUE",
                           height: 55,
                           width: 156,
                           fontSize: 18.sp,
                           textColor: Colors.white,
                           onPressed: () {
                             Get.to(()=>const PaymentDetail(),transition: Transition.fadeIn,duration: const Duration(milliseconds: 500));
                           },
                         ),
                       ],
                     ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
