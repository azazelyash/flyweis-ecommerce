import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:mr_pritam_client_app/CommonButton/common_button.dart';

import 'business_detail.dart';

class ClientRegistration extends StatelessWidget {
  String? selectedValue = "Owner";
  ClientRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40.h),
          child: SafeArea(
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
                    Text("CREDENTIALS",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        color: Color(0xffF5A302),

                      ),),
                    const Text("BUSINESS"),
                    const Text("PAYMENT"),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LinearProgressBar(
                    minHeight: 10,
                    currentStep: 1,
                    maxSteps: 3,
                    borderRadius: BorderRadius.circular(10.r),
                    backgroundColor: Colors.white,
                    progressColor: const Color(0xffF5A302),
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text(
                  "CREDENTIALS",
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
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Title",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            hintText: "Mr",
                            hintStyle: GoogleFonts.plusJakartaSans(
                                fontWeight: FontWeight.w200, fontSize: 14.sp),
                            suffixIcon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "First Name",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            suffixIcon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Last Name",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            suffixIcon: const Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 35,
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Office Phone Number",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // Card(
                      //   elevation: 2,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(5.r),
                      //   ),
                      //   child: IntlPhoneField(
                      //     decoration: InputDecoration(
                      //         counterText: "",
                      //         labelText: 'Enter Lorem Ipsum',
                      //         labelStyle: GoogleFonts.plusJakartaSans(
                      //           fontSize: 13.sp,
                      //           fontWeight: FontWeight.w200,
                      //         ),
                      //         border: InputBorder.none),
                      //     initialCountryCode: 'IN',
                      //     showDropdownIcon: false,
                      //     flagsButtonMargin: const EdgeInsets.only(left: 10),
                      //     onChanged: (phone) {
                      //       print(phone.completeNumber);
                      //     },
                      //   ),
                      // ),

                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        shadowColor: Colors.black,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          height: 50.0,
                          child: Row(
                            children: [
                              // Country Flag
                              Container(
                                height: 40.0,
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/flag.png',
                                    ), // Replace with your flag image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.0),

                              // Country Code
                              const Text(
                                '+44',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(width: 8.0),
                              Container(
                                height: 40,
                                width: 1,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8.0),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Lorem Ipsum',
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Personal Phone Number ",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "(OPTIONAL)",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.r),
                        ),
                        shadowColor: Colors.black,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          height: 50.0,
                          child: Row(
                            children: [
                              // Country Flag
                              Container(
                                height: 40.0,
                                width: 60.0,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/flag.png',
                                    ), // Replace with your flag image path
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8.0),

                              // Country Code
                              const Text(
                                '+44',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              const SizedBox(width: 8.0),
                              Container(
                                height: 40,
                                width: 1,
                                color: Colors.black,
                              ),
                              const SizedBox(width: 8.0),
                              const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Enter Lorem Ipsum',
                                  ),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Password",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              size: 35,
                              color: Color(0xffF5A302),
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Confirm Password",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            suffixIcon: const Icon(
                              Icons.visibility_off,
                              size: 35,
                              color: Color(0xffF5A302),
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Text(
                        "Role",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
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
                            suffixIcon: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                value: selectedValue,
                                isExpanded:
                                    true, // Ensure the dropdown stretches to the full width
                                icon: const Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                items: const [
                                  DropdownMenuItem(
                                    value: "Owner",
                                    child: Text(
                                      "Owner",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Manager",
                                    child: Text(
                                      "Manager",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Head Chef",
                                    child: Text(
                                      "Head Chef",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "General Manager",
                                    child: Text(
                                      "General Manager",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Event Company & Corporate Events",
                                    child: Text(
                                      "Event Company & Corporate Events",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DropdownMenuItem(
                                    value: "Bar",
                                    child: Text(
                                      "Restaurant",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                                onChanged: (val) {
                                  // Handle the selected value
                                  print("Selected: $val");
                                },
                                menuMaxHeight:
                                    200.0, // Limit the height of the dropdown
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      CommonButton(
                        color: Color(0xffF5A302),
                          title: "CONTINUE",
                          height: 55,
                          width: 345,
                          fontSize: 18.sp,
                          textColor: Colors.white,
                          onPressed: () {
                          Get.to(()=>  BusinessDetail(),
                            transition: Transition.fadeIn,
                            duration: const Duration(milliseconds: 500),
                          );
                          }),
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
