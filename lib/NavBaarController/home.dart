import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mr_pritam_client_app/common/notify_toast.dart';
import 'package:mr_pritam_client_app/controllers/auth_controller.dart';
import 'package:mr_pritam_client_app/models/banner_data_model.dart';
import 'package:mr_pritam_client_app/models/job_data_model.dart';

import 'notification.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fetchingData = useState<bool>(false);
    final newJobs = useState<List<JobDataModel>>([]);

    final authProvider = ref.read(authController.notifier);

    Future<void> getData() async {
      try {
        fetchingData.value = true;
        newJobs.value = await authProvider.getNewJobs();
      } catch (e) {
        NotifyToast.showError(context, e.toString());
      } finally {
        fetchingData.value = false;
      }
    }

    useEffect(() {
      getData();
      return null;
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
                      style: GoogleFonts.plusJakartaSans(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      children: [
                        Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              Get.to(
                                () => const NotificationScreen(),
                                transition: Transition.fadeIn,
                                duration: const Duration(milliseconds: 500),
                              );
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.notifications, color: Colors.amber),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Material(
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              Get.to(
                                () => const NotificationScreen(),
                                transition: Transition.fadeIn,
                                duration: const Duration(milliseconds: 500),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  const Icon(Icons.shopping_cart, color: Color(0xff384F6C)),
                                  const SizedBox(width: 6),
                                  Text(
                                    "CART",
                                    style: GoogleFonts.plusJakartaSans(fontSize: 16.sp, fontWeight: FontWeight.w700, color: const Color(0xff384F6C)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const CustomCarousel(),
                const SizedBox(height: 32),
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        height: 100,
                        child: Material(
                          elevation: 1,
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xfffff2d8),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12, left: 12, bottom: 12, right: 32),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.add_circle,
                                            color: Color(0xffF5A302),
                                            size: 45,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "ADD JOB",
                                            style: GoogleFonts.plusJakartaSans(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.w700,
                                              color: const Color(0xffF5A302),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        "Find your Temporary Staff",
                                        style: GoogleFonts.poppins(
                                          fontSize: 14.sp,
                                          color: Colors.grey.shade500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: -20,
                        child: Image.asset(
                          "assets/images/box.png",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "My Dashboard",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: newJobs.value.length,
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.9,
                  ),
                  itemBuilder: (context, index) {
                    final item = newJobs.value[index];
                    return Container(
                      decoration: BoxDecoration(
                        color: const Color(0xfffff2d8),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withValues(alpha: 0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (item.departments?.first.departmentId?.image != null) ...[
                            Image.network(
                              item.departments!.first.departmentId!.image!,
                              height: 70,
                              width: 70,
                            ),
                          ],
                          SizedBox(height: 20),
                          // if (item["title"] != null)
                          //   Text(
                          //     item["title"]!,
                          //     style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600, color: Colors.grey),
                          //     textAlign: TextAlign.center,
                          //   ),
                          // SizedBox(height: 10.h),
                          // if (item["price"] != null)
                          //   Text(
                          //     "\$${item["price"]}",
                          //     style: const TextStyle(
                          //       fontSize: 18,
                          //       fontWeight: FontWeight.bold,
                          //       color: Color(0xff384F6C),
                          //     ),
                          //   ),
                          // SizedBox(height: 10.h),
                          // if (item["subtitle"] != null)
                          //   Text(
                          //     item["subtitle"]!,
                          //     style: const TextStyle(
                          //       fontSize: 14,
                          //       color: Color(0xff595959B2),
                          //     ),
                          //     textAlign: TextAlign.center,
                          //   ),
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCarousel extends HookConsumerWidget {
  const CustomCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.read(authController.notifier);

    final banners = useState<List<BannerDataModel>>([]);

    Future<void> getData() async {
      try {
        banners.value = await authProvider.getAllBanners();
      } catch (e) {
        NotifyToast.showError(context, e.toString());
      }
    }

    useEffect(() {
      getData();
      return null;
    }, []);
    return CarouselSlider(
      items: banners.value.map((item) {
        if (item.bannerImage != null) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(item.bannerImage!).image,
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      }).toList(),
      options: CarouselOptions(
        height: 160,
        autoPlayAnimationDuration: const Duration(milliseconds: 500),
        autoPlay: true,
        scrollDirection: Axis.horizontal,
        viewportFraction: 1,
      ),
    );
  }
}
