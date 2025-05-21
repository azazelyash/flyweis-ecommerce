import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chat_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  Widget notificationCard(String imagePath, String title, String actionText,
      {String? time, bool isOnline = false}) {
    return Stack(
      children: [
        Card(
          elevation: 2,
          child: SizedBox(
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage(imagePath),
                    ),
                    if (isOnline)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 17.h,
                          width: 17.w,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.w,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                title: Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w300,
                    fontSize: 13.sp,
                    color: const Color(0xff384F6C),
                  ),
                ),
                subtitle: Row(
                  children: [
                    Text(
                      actionText,
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 13.sp,
                        color: const Color(0xffF5A302),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Image.asset("assets/images/arrow1.png"),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (time != null)
          Positioned(
            top: 80.h,
            right: 20.w,
            child: Text(
              time,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 11.sp,
                color: const Color(0xff384F6C),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
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
                      "Notifications",
                      style: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Text(
                  "TODAY",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: const Color(0xff384F6C),
                  ),
                ),
                SizedBox(height: 20.h),
                InkWell(
                  onTap: () {
                    Get.to(() =>const ChatScreen(),
                        transition: Transition.fadeIn,

                    );
                  },
                  child: notificationCard(
                    "assets/images/notifye.png",
                    "1 New Message from Staff!",
                    "VIEW",
                    time: "2:30 AM",
                    isOnline: true,
                  ),
                ),
                SizedBox(height: 20.h),
                notificationCard(
                  "assets/images/notifye.png",
                  "1 New Message from Staff!",
                  "VIEW",
                  time: "3:15 AM",
                  isOnline: true,
                ),
                SizedBox(height: 30.h),
                Text(
                  "THIS MONTH",
                  style: GoogleFonts.plusJakartaSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13.sp,
                    color: const Color(0xff384F6C),
                  ),
                ),
                SizedBox(height: 20.h),
                notificationCard(
                  "assets/images/notifye.png",
                  "1 New Message from Staff!",
                  "VIEW",
                  time: "3:15 AM",
                  isOnline: true,
                ),
                SizedBox(height: 20.h),
                notificationCard(
                  "assets/images/notifye.png",
                  "1 New Message from Staff!",
                  "VIEW",
                  time: "3:15 AM",
                  isOnline: true,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
