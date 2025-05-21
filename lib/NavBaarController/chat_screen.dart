import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Stack(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Image.asset(
                "assets/images/Chat with Staff.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 686, left: 282),
              child: InkWell(
                onTap: () {
                  Get.bottomSheet(
                    enableDrag: false,
                    BottomSheet(
                        enableDrag: false,
                        onClosing: () {},
                        builder: (context) {
                          return SizedBox(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Upload Group Profile Picture",
                                    style: GoogleFonts.roboto(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/camera.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          "CLICK PHOTO",
                                          style: GoogleFonts.roboto(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/picture.png",
                                          height: 50,
                                          width: 50,
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Text(
                                          "CLICK PHOTO",
                                          style: GoogleFonts.roboto(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  );
                },
                child: Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
// Get.bottomSheet(
// enableDrag: false,
// BottomSheet(
// enableDrag: false,
// onClosing: (){}, builder: (context) {
// return SizedBox(
// height: 200,
// child: Padding(
// padding:  const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("Upload Group Profile Picture",style: GoogleFonts.roboto(
// fontSize: 18.sp,
// fontWeight: FontWeight.w700,
//
// ),),
// const Divider(),
// SizedBox(
// height: 10.h,
// ),
// InkWell(
// onTap: () {
// Get.back();
// },
// child: Row(
// children: [
// Image.asset("assets/images/camera.png",height: 50,width: 50,),
// SizedBox(width: 20.w,),
// Text("CLICK PHOTO",style: GoogleFonts.roboto(
// fontSize: 16.sp,
// fontWeight: FontWeight.bold,
// color: Colors.grey,
//
// ),),
// ],
// ),
// ),
// SizedBox(
// height: 20.h,
// ),
// InkWell(
// onTap: () {
// Get.back();
// },
// child: Row(
// children: [
// Image.asset("assets/images/picture.png",height: 50,width: 50,),
// SizedBox(width: 20.w,),
// Text("CLICK PHOTO",style: GoogleFonts.roboto(
// fontSize: 16.sp,
// fontWeight: FontWeight.bold,
// color: Colors.grey,
//
// ),),
// ],
// ),
// ),
// ],
// ),
// ),
// );
// }),
// );
