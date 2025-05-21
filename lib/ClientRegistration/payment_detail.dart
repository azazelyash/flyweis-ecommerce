import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:mr_pritam_client_app/ClientRegistration/verifying_page.dart';

import '../CommonButton/common_button.dart';

class PaymentDetail extends StatefulWidget {
  const PaymentDetail({super.key});

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  String? selectedValue;

  final List<Map<String, String>> bankOptions = [
    {"value": "Barclays Bank", "image": "assets/images/bank1.png"},
    {"value": "Natwest", "image": "assets/images/bank2.png"},
    {"value": "HSBC", "image": "assets/images/bank3.png"},
    {"value": "Halifax Bank", "image": "assets/images/bank4.png"},
    {"value": "Lloyds Banking Group", "image": "assets/images/bank5.png"},
    {"value": "Bank of Scotland", "image": "assets/images/bank6.png"},
  ];
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
                    Text(
                      "PAYMENT",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14.sp,
                        color: const Color(0xffF5A302),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: LinearProgressBar(
                    minHeight: 10,
                    currentStep: 3,
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
                  "PAYMENT DETAILS",
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
                        "Add Card Details",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 100,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xff384F6C),
                            width: 2,
                          ),
                        ),
                        child: ListTile(
                          leading: Image.asset(
                            "assets/images/arrow.png",
                            color: const Color(0xff384F6C),
                            height: 30,
                            width: 30,
                          ),
                          title: Text(
                            "SKIP FOR NOW",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff384F6C),
                            ),
                          ),
                          subtitle: Text(
                            "You can provide your card details later on!",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "Bank",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.01,
                      ),
                      Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        shadowColor: Colors.grey.shade500,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              // Expanded TextFormField
                              Expanded(
                                child: TextFormField(
                                  controller: TextEditingController(
                                    text: selectedValue,
                                  ),
                                  decoration: InputDecoration(
                                    hintText: selectedValue == null
                                        ? "Select your Bank"
                                        : null,
                                    hintStyle: GoogleFonts.plusJakartaSans(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                  enabled: false,
                                ),
                              ),
                              // Dropdown Button
                              GestureDetector(
                                onTap: () => _showCustomDropdown(context),
                                child: const Icon(
                                  Icons.arrow_drop_down_outlined,
                                  size: 50,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height * 0.04,
                      ),
                      Text(
                        "Full Name",
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
                      Text(
                        "Account Number",
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
                      Text(
                        "Sort Code",
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
                        height: Get.height * 0.1,
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
                              Get.dialog(Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: SizedBox(
                                  height: 650,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 14.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                "Terms & Conditions",
                                                style:
                                                    GoogleFonts.plusJakartaSans(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              InkWell(
                                                  onTap: () {
                                                    Get.back(canPop: true);
                                                  },
                                                  child: const Icon(
                                                    Icons.close,
                                                    size: 30,
                                                  ))
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          color: Colors.black,
                                          endIndent: 10,
                                          indent: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Text(
                                            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla in egestas leo, vel venenatis nunc. Etiam ornare nunc vitae dignissim sodales. Praesent vehicula ante vitae pharetra porta. Duis ac placerat elit. Nunc faucibus felis dolor, ut volutpat ante scelerisque nec. Curabitur et ex facilisis, scelerisque eros in, efficitur felis. Nulla et massa sit amet urna pellentesque viverra nec nec augue. Curabitur nec leo tempus, commodo diam at, cursus nisi. Etiam auctor lectus at lobortis posuere. Sed maximus nibh tellus, ac fermentum diam cursus et. Donec eu volutpat diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.''',
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey.shade500),
                                          ),
                                        ),
                                        SizedBox(
                                          height: Get.height * 0.02,
                                        ),
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.check_box,
                                              color: Colors.green,
                                              size: 35,
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                                "I agree to the Terms & Conditions"),
                                          ],
                                        ),
                                        SizedBox(
                                          height: Get.height * .03,
                                        ),
                                        CommonButton(
                                            title: "SUBMIT",
                                            color: const Color(0xffF5A302),
                                            height: 45,
                                            width: 240,
                                            fontSize: 16,
                                            textColor: Colors.white,
                                            onPressed: () {
                                              Get.back();
                                              Get.to(()=> const VerifyingPage(),
                                              transition: Transition.fadeIn,
                                                duration: Duration(milliseconds: 500),
                                              );
                                            })
                                      ],
                                    ),
                                  ),
                                ),
                              ));
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

  void _showCustomDropdown(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 300, // Adjust height as needed
          child: Scrollbar(
            trackVisibility: true,
            thumbVisibility: true,
            child: ListView.builder(
              itemCount: bankOptions.length,
              itemBuilder: (context, index) {
                final option = bankOptions[index];
                return ListTile(
                  leading: Image.asset(
                    option["image"]!,
                    width: 40,
                    height: 50,
                  ),
                  title: Text(option["value"]!),
                  onTap: () {
                    setState(() {
                      selectedValue = option["value"];
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
