import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_pritam_client_app/CommonButton/common_button.dart';
import 'package:mr_pritam_client_app/NavBaarController/bottom_navbaar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                    SizedBox(width: 10.w),
                    Text(
                      "Cart",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.03,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Total ",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                        ),
                      ),
                      TextSpan(
                        text: "1 Item ",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                          color: const Color(0xffF5A302),
                        ),
                      ),
                      TextSpan(
                        text: "in Cart!",
                        style: GoogleFonts.plusJakartaSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 370,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "1 JOB POSTING",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: const Color(0xff1E2A39)),
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Waiter & Waitress",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.sp,
                                    ),
                                  ),
                                  Text(
                                    "£500",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20.sp,
                                        color: const Color(0xff1E2A39)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.03,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/27e1/bc77/9308406391cb64adfeeb37a288ae00dc?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=H9c~9j~B3D2w4KssQlW~zDJWAjySgPqrmKcUpDskmhgwVWROr40bQZWvjDoYG5ZITw2CvpbH36T5s4nKBdGFBCUekoeBaVhMNE2zLgyESQOEcGzC2hEURFhZlmDSQI5bl5CSuV6h8qI9D9auYy~I~-mDj~ohIiorIQgRI102e2a8HAlBXxu1T1UF3T1ANJXjkLPlp5DmzTrhQIpOIxm~JXWmTDPxxU02coC-g54jvm4P73icLnY7H-WEbGVSOlmD-IJqMspo~214Azj5DjGQyNdFWBdCGAiCnTL9iVGaZcyu~nRvWm~DtR3u5RpzAQodE7aK4LyF9RHGiuQeUOWTdw__",
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "SHIFT TIMING -",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10:00 AM to 8:00 PM",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/5730/e75b/79915e7f6427bdf9193ba47bceee6487?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MeqQhi8Z0Z0YpDsxwTQoX7OTQLhp6VawjEuqn7O0bza2EC4kFO5T7kbOW4800TWBGRTSmOshaYnxixhngbz9GcH40KUh~oXSXGcO7GPaVrgggIfUEfVPdxzY3c~dCVFpU3I8tPhw-4vMjwROwWXRGdR-E4thUSPaq6N9KQHwcHjwiKTbrZMfMhOfFBPRyfMygbeUJKWM4qdtX6cGJKlekYJAhDM2PnXCeb5aoNO5I4hBpwi~ePY4ET4gYbgCxNawxZJ37fHds9X6kVyVtZWcpGkuUoAdk1DUQjo25fqUMpY6RHj3vokUj8dd98NXFDHmmFVl5365CR7SxIn63ixHTg__",
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "SHIFT TIMING -",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "10:00 AM to 8:00 PM",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/5730/e75b/79915e7f6427bdf9193ba47bceee6487?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=MeqQhi8Z0Z0YpDsxwTQoX7OTQLhp6VawjEuqn7O0bza2EC4kFO5T7kbOW4800TWBGRTSmOshaYnxixhngbz9GcH40KUh~oXSXGcO7GPaVrgggIfUEfVPdxzY3c~dCVFpU3I8tPhw-4vMjwROwWXRGdR-E4thUSPaq6N9KQHwcHjwiKTbrZMfMhOfFBPRyfMygbeUJKWM4qdtX6cGJKlekYJAhDM2PnXCeb5aoNO5I4hBpwi~ePY4ET4gYbgCxNawxZJ37fHds9X6kVyVtZWcpGkuUoAdk1DUQjo25fqUMpY6RHj3vokUj8dd98NXFDHmmFVl5365CR7SxIn63ixHTg__",
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "ADDRESS - ",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "XYZ Street, Lorem Ipsum City, UK",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/3295/ca00/14d8014c3d54ba74020ecded5759338b?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=TJRNndqvpIzqWZKrgYG-3ttRHvs3zJF2SCL2YXI3iS3fFBLvXLxc6A-LIBea1d33ZiIvw1WspwhZiggcFvgPRuQ0u0sdNaXjAyy7ZUI3PRAp4zmdCREfpg3K56iSoF5jikn0mIStsxHi0K-Lx-SQojegSNIn60tbw~MBg~zhaLMXs~~T7IpJ8LOlavOetxSpE2qzYuC2WJOBjZFW1xPWFplHB8U~oXrQeFVIA2Gx0MI-rh4KyaKyg5mF8f11fnjtdN8fODkQd16iffTDFn4vLqpRvUadx1ajsQ-muvnMnS~dx1ae2QJgp4fgMJCRa-dkV6WM1L2Aq~O2zMDY0XmPdQ__",
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "STAFF REQUIRED - ",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "6 - 7 Employees",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/47e8/8229/ff02cb53308bd38cbfdc7ea6c1e9e1e2?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=BRqWlSFUSFJrpdRrGgzM-noB3giJiCIYW-ngmdFmUHjG5JnU~uQyR3S9YbHfU~nAZK7ULAOxTDDYFdNLtwGxJez6oWfb8c8QofzdCtbRWTI4RpTaMjWiip0uMdIRsoGBXagdYnGl~-TTln7hoEkPcpp5ChLTKLPMm8fqMLuC8sOXZXtx-tYdjTZ-MBftJyShm2UisDyUk81lFdwMRU-9OlfHlqIj2pbBB0gMYpkG8r-j03FJA1poC~N59JZWjwlIz66O9eqhOeMeRri9YzYXqOy5a9gkJCpLRSRWMRaj8anuUeVNK4UZzf9wsl0kiZWm6jJMUjBJ0vmk3cQhcKnMdw__",
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey.shade500,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "DRESS CODE - ",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "6 - 7 Employees",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 13.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Get.height * 0.04,
                              ),
                              const Divider(
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: Get.height * 0.02,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        "https://s3-alpha-sig.figma.com/img/b8b7/206f/ff40dd9284f7a7a04e0e723a41da0858?Expires=1737936000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=DvAfMda7ZmtU3rqdZbzaMwnQaDi4jxHDlOjuoUS-C85W-MjeC5UCBfrr6RisSiqoT8xdz0wFGNHuZJ7c6kIgi-rzdO9iTdguu0hrcqBiXM4g0USXA2Ai9VVzP7-zadbourv5y74FsPhkx3G3Cl79uM0qjihXW70r3pDepdVoYYpz6ATo2YKr3meqBwxRnchwjXNUbnATulxabCWzyXq3ZBWyBr3gRWM05iLBBLakJEec~q1HDFYw08CSOlRtE7uMkSZOv06KLakhy6llI~u1vym2gAu0RU3rSCfNMJWh7YloS2BN5d33vkJeiM8QYZH1XiYTxEhOmy~tM7qW4Rm0RQ__",
                                    height: 30,
                                    width: 30,
                                  ),
                                  SizedBox(
                                    width: Get.width * 0.02,
                                  ),
                                  Text(
                                    "DELETE ITEM",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xffFC0005),
                                      fontSize: 12.sp,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.04,
                ),
                Center(
                  child: Column(
                    children: [
                      CommonButton(
                        color: const Color(0xffF5A302),
                        title: "CHECKOUT NOW",
                        height: 55,
                        width: 250,
                        fontSize: 18.sp,
                        textColor: Colors.white,
                        onPressed: () {
                          Get.bottomSheet(
                            isScrollControlled: true,
                            enableDrag: false,
                            BottomSheet(
                              enableDrag: false,
                              onClosing: () {},
                              builder: (context) {
                                return Container(
                                  height: 600, // Adjust the height as needed
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      // Scrollable Content
                                      Expanded(
                                        child: SingleChildScrollView(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Checkout",
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontSize: 20.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700),
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                        },
                                                        child: const Icon(
                                                          Icons.close,
                                                          size: 35,
                                                        ))
                                                  ],
                                                ),
                                                SizedBox(height: 10.h),
                                                const Divider(
                                                  color: Colors.black,
                                                ),
                                                SizedBox(height: 20.h),
                                                Text(
                                                  "Saved Accounts",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontSize: 18.sp,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                ),
                                                SizedBox(height: 10.h),
                                                Container(
                                                  height: 170,
                                                  width: 350,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                      width: 2,
                                                      color: const Color(
                                                          0xff53A654),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20.h),
                                                    child: Column(
                                                      children: [
                                                        ListTile(
                                                          leading: const Icon(
                                                            Icons
                                                                .radio_button_on,
                                                            size: 30,
                                                            color: Color(
                                                                0xff53A654),
                                                          ),
                                                          title: Image.asset(
                                                            "assets/images/bank1.png",
                                                            height: 40,
                                                            width: 40,
                                                          ),
                                                          trailing: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 25,
                                                                    top: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Barclays",
                                                                  style: GoogleFonts.plusJakartaSans(
                                                                      fontSize:
                                                                          14.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                                Text.rich(
                                                                  TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "Ends with ",
                                                                          style:
                                                                              GoogleFonts.roboto(
                                                                            fontSize:
                                                                                12.sp,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              "***7842",
                                                                          style:
                                                                              GoogleFonts.roboto(
                                                                            fontSize:
                                                                                12.sp,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                const Color(0xff384F6C),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 40.h),
                                                          child: Container(
                                                            height: 40.h,
                                                            width: 140.w,
                                                            decoration:
                                                                const BoxDecoration(
                                                                    color: Color(
                                                                        0xffefdfbe)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Image.asset(
                                                                  "assets/images/edit.png",
                                                                  height: 20,
                                                                  width: 20,
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "Edit Details",
                                                                  style:
                                                                      GoogleFonts
                                                                          .roboto(
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: const Color(
                                                                        0xffF5A302),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.03,
                                                ),
                                                Container(
                                                  height: 185,
                                                  width: 350,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                      width: 2,
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 20.h),
                                                    child: Column(
                                                      children: [
                                                        ListTile(
                                                          leading: const Icon(
                                                            Icons
                                                                .radio_button_off,
                                                            size: 30,
                                                            color: Colors.grey,
                                                          ),
                                                          title: Image.asset(
                                                            "assets/images/bnk1.png",
                                                            height: 60,
                                                            width: 80,
                                                          ),
                                                          trailing: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 25,
                                                                    top: 15),
                                                            child: Column(
                                                              children: [
                                                                Text(
                                                                  "Barclays",
                                                                  style: GoogleFonts.plusJakartaSans(
                                                                      fontSize:
                                                                          14.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w700),
                                                                ),
                                                                Text.rich(
                                                                  TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              "Ends with ",
                                                                          style:
                                                                              GoogleFonts.roboto(
                                                                            fontSize:
                                                                                12.sp,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              "***7842",
                                                                          style:
                                                                              GoogleFonts.roboto(
                                                                            fontSize:
                                                                                12.sp,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            color:
                                                                                const Color(0xff384F6C),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 40.h),
                                                          child: Container(
                                                            height: 40.h,
                                                            width: 140.w,
                                                            decoration:
                                                                const BoxDecoration(
                                                                    color: Color(
                                                                        0xffefdfbe)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Image.asset(
                                                                  "assets/images/edit.png",
                                                                  height: 20,
                                                                  width: 20,
                                                                ),
                                                                const SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  "Edit Details",
                                                                  style:
                                                                      GoogleFonts
                                                                          .roboto(
                                                                    fontSize:
                                                                        14.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: const Color(
                                                                        0xffF5A302),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.03,
                                                ),
                                                Row(
                                                  children: [
                                                    const Expanded(
                                                      child: Divider(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 8),
                                                      child: Text(
                                                        "OR",
                                                        style:
                                                            GoogleFonts.roboto(
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const Expanded(
                                                      child: Divider(
                                                        color: Colors.black,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.04,
                                                ),
                                                Text(
                                                  "Checkout with Bank Details",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16.sp),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.04,
                                                ),
                                                Text(
                                                  "Full Name",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14.sp),
                                                ),
                                                Card(
                                                  color: Colors.white,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r),
                                                  ),
                                                  shadowColor:
                                                      Colors.grey.shade500,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter Lorem Ipsum",
                                                      hintStyle: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 14.sp),
                                                      border: InputBorder.none,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 10),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.04,
                                                ),
                                                Text(
                                                  "Account Number",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14.sp),
                                                ),
                                                Card(
                                                  color: Colors.white,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r),
                                                  ),
                                                  shadowColor:
                                                      Colors.grey.shade500,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter Lorem Ipsum",
                                                      hintStyle: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 14.sp),
                                                      border: InputBorder.none,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 10),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.04,
                                                ),
                                                Text(
                                                  "Short Code",
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 14.sp),
                                                ),
                                                Card(
                                                  //color: Colors.white,
                                                  elevation: 2,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.r),
                                                  ),
                                                  shadowColor:
                                                      Colors.grey.shade500,
                                                  child: TextFormField(
                                                    decoration: InputDecoration(
                                                      hintText: "",
                                                      hintStyle: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 14.sp),
                                                      border: InputBorder.none,
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                              horizontal: 10),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.03,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons
                                                          .check_box_outline_blank,
                                                      color:
                                                          Colors.grey.shade500,
                                                    ),
                                                    SizedBox(
                                                      width: Get.width * 0.01,
                                                    ),
                                                    Text(
                                                      "Save this Card Details",
                                                      style: GoogleFonts
                                                          .plusJakartaSans(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 14.sp),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.03,
                                                ),
                                                const Divider(),
                                                SizedBox(
                                                  height: Get.height * 0.03,
                                                ),
                                                Text(
                                                  "Pay Securely with",
                                                  style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/bank1.png",
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                                    Image.asset(
                                                      "assets/images/bank2.png",
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                                    Image.asset(
                                                      "assets/images/bank3.png",
                                                      height: 100,
                                                      width: 100,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Fixed Content (Non-Scrollable)
                                      Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(10.r),
                                            topLeft: Radius.circular(10.r),
                                          ),
                                        ),
                                        elevation: 2,
                                        child: SizedBox(
                                          height: 200,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "TOTAL AMOUNT",
                                                      style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    const Icon(
                                                      Icons.info_outline,
                                                      color: Color(0xff1E2A39),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text.rich(TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: "£500 ",
                                                          style: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 18,
                                                            color: const Color(
                                                                0xff1E2A39),
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: "(1 ITEM)",
                                                          style: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.w200,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                                    CommonButton(
                                                      color: const Color(
                                                          0xffF5A302),
                                                      title: "BOOK NOW",
                                                      height: 55,
                                                      width: 150,
                                                      fontSize: 18.sp,
                                                      textColor: Colors.white,
                                                      onPressed: () {},
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: Get.height * 0.02,
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    Get.bottomSheet(
                                                      enableDrag: false,
                                                      BottomSheet(
                                                        enableDrag: false,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              topLeft: Radius
                                                                  .circular(10),
                                                              topRight: Radius
                                                                  .circular(10),
                                                            ),
                                                          ),
                                                          onClosing: () {},
                                                          builder: (context) {
                                                            return SizedBox(
                                                              height: 600,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 30
                                                                            .h,
                                                                        left: 15
                                                                            .w,
                                                                        right: 15
                                                                            .w),
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          "Apply Offer",
                                                                          style: GoogleFonts.plusJakartaSans(
                                                                              fontSize: 20.sp,
                                                                              fontWeight: FontWeight.w700),
                                                                        ),
                                                                        InkWell(
                                                                            onTap:
                                                                                () {
                                                                              Get.back();
                                                                            },
                                                                            child:
                                                                                const Icon(
                                                                              Icons.close,
                                                                              size: 35,
                                                                            ))
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                        height:
                                                                            10.h),
                                                                    const Divider(),
                                                                    SizedBox(
                                                                      height: Get
                                                                              .height *
                                                                          0.03,
                                                                    ),
                                                                    Text(
                                                                      "Enter Coupon Code",
                                                                      style: GoogleFonts.plusJakartaSans(
                                                                          fontSize: 16
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    Card(
                                                                      //color: Colors.white,
                                                                      elevation:
                                                                          2,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(5.r),
                                                                      ),
                                                                      shadowColor: Colors
                                                                          .grey
                                                                          .shade500,
                                                                      child:
                                                                          TextFormField(
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              "Enter Lorem Ipsum",
                                                                          hintStyle: GoogleFonts.plusJakartaSans(
                                                                              fontWeight: FontWeight.w200,
                                                                              fontSize: 14.sp),
                                                                          border:
                                                                              InputBorder.none,
                                                                          contentPadding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal: 10),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: Get
                                                                              .height *
                                                                          0.03,
                                                                    ),
                                                                    Text(
                                                                      "Your Coupons",
                                                                      style: GoogleFonts.plusJakartaSans(
                                                                          fontSize: 18
                                                                              .sp,
                                                                          fontWeight:
                                                                              FontWeight.w700),
                                                                    ),
                                                                    SizedBox(
                                                                      height: Get
                                                                          .height *
                                                                          0.03,
                                                                    ),
                                                                    DottedBorder(
                                                                      strokeWidth:
                                                                          2,
                                                                      color: Color(
                                                                          0xff1E2A39),
                                                                      dashPattern: [
                                                                        4,
                                                                        4
                                                                      ],
                                                                      child:
                                                                          ListTile(
                                                                                                                                                  leading:
                                                                            Image.asset("assets/images/prerecord.png",),
                                                                                                                                                  title:
                                                                            Text(
                                                                          "LOREMIPSUM50",
                                                                          style:
                                                                              GoogleFonts.plusJakartaSans(
                                                                            fontSize:
                                                                                12.sp,
                                                                            fontWeight:
                                                                                FontWeight.w700,
                                                                          ),
                                                                                                                                                  ),
                                                                                                                                                  subtitle:
                                                                            Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizedBox(height: 5.h,),
                                                                            Text(
                                                                              "Get upto 50% on using this coupon",
                                                                              style: GoogleFonts.roboto(
                                                                                fontSize: 10.sp,
                                                                                fontWeight: FontWeight.w500,
                                                                                color: Colors.grey
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 4.0), // Add spacing between text and button
                                                                            CommonButton(
                                                                              color: Color(0xffefdfbe),
                                                                              title: "APPLY",
                                                                              height: 40,
                                                                              width: 150,
                                                                              fontSize: 16.sp,
                                                                              textColor: Color(0xffF5A302),
                                                                              onPressed: () {},
                                                                            ),
                                                                          ],
                                                                                                                                                  ),
                                                                                                                                                ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: Get
                                                                          .height *
                                                                          0.03,
                                                                    ),
                                                                    DottedBorder(
                                                                      strokeWidth:
                                                                      2,
                                                                      color: Color(
                                                                          0xff1E2A39),
                                                                      dashPattern: [
                                                                        4,
                                                                        4
                                                                      ],
                                                                      child:
                                                                      ListTile(
                                                                        leading:
                                                                        Image.asset("assets/images/prerecord.png",),
                                                                        title:
                                                                        Text(
                                                                          "LOREMIPSUM50",
                                                                          style:
                                                                          GoogleFonts.plusJakartaSans(
                                                                            fontSize:
                                                                            12.sp,
                                                                            fontWeight:
                                                                            FontWeight.w700,
                                                                          ),
                                                                        ),
                                                                        subtitle:
                                                                        Column(
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment.start,
                                                                          children: [
                                                                            SizedBox(height: 5.h,),
                                                                            Text(
                                                                              "Get upto 50% on using this coupon",
                                                                              style: GoogleFonts.roboto(
                                                                                  fontSize: 10.sp,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  color: Colors.grey
                                                                              ),
                                                                            ),
                                                                            SizedBox(height: 4.0), // Add spacing between text and button
                                                                            CommonButton(
                                                                              color: Color(0xffefdfbe),
                                                                              title: "APPLY",
                                                                              height: 40,
                                                                              width: 150,
                                                                              fontSize: 16.sp,
                                                                              textColor: Color(0xffF5A302),
                                                                              onPressed: () {},
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                    );
                                                  },
                                                  child: DottedBorder(
                                                    color:
                                                        const Color(0xff384F6C),
                                                    strokeWidth: 1,
                                                    dashPattern: [3, 4],
                                                    borderType:
                                                        BorderType.RRect,
                                                    child: SizedBox(
                                                      height: 50,
                                                      width: 330,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Image.asset(
                                                            "assets/images/percenteg.png",
                                                            color: const Color(
                                                                0xff384F6C),
                                                            height: 25,
                                                            width: 25,
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Text(
                                                            "APPLY OFFER",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              fontSize: 16,
                                                              color: const Color(
                                                                  0xff384F6C),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      InkWell(
                        onTap: () {
                          Get.off(
                            () => const BottomNavbaar(),
                            transition: Transition.fadeIn,
                            duration: const Duration(milliseconds: 500),
                          );
                        },
                        child: Text(
                          "< Go to Homepage",
                          style: GoogleFonts.plusJakartaSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 18.sp,
                            color: const Color(0xff384F6C),
                          ),
                        ),
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
