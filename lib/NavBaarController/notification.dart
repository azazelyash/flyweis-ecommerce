import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:mr_pritam_client_app/common/notify_toast.dart';
import 'package:mr_pritam_client_app/controllers/auth_controller.dart';
import 'package:mr_pritam_client_app/models/notification_model.dart';
import 'package:shimmer/shimmer.dart';

import 'chat_screen.dart';

class NotificationScreen extends HookConsumerWidget {
  const NotificationScreen({super.key});

  Widget notificationCard(String imagePath, String title, String actionText, {String? time, bool isOnline = false}) {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final authProvider = ref.read(authController.notifier);

    final fetchingData = useState<bool>(false);
    final notifications = useState<List<NotificationModel>>([]);

    Future<void> getNotifications() async {
      try {
        fetchingData.value = true;
        notifications.value = await authProvider.getAllNotifications();
      } catch (e) {
        NotifyToast.showError(context, e.toString());
      } finally {
        fetchingData.value = false;
      }
    }

    useEffect(() {
      getNotifications();
      return null;
    }, []);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () => Get.back(),
                    child: const Icon(Icons.chevron_left_rounded),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Notifications",
                    style: GoogleFonts.plusJakartaSans(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                "TODAY",
                style: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.w600, color: const Color(0xff384F6C)),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: fetchingData.value ? 3 : notifications.value.length,
                  itemBuilder: (context, index) {
                    if (fetchingData.value) {
                      return Shimmer.fromColors(
                        baseColor: Colors.grey.shade200,
                        highlightColor: Colors.grey.shade100,
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          margin: const EdgeInsets.only(bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      );
                    }
                    final item = notifications.value[index];
                    return NotificationTile(data: item);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.data,
  });

  final NotificationModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Material(
        elevation: 2,
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {
            Get.to(
              () => const ChatScreen(),
              transition: Transition.fadeIn,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                SizedBox(
                  width: 56,
                  height: 56,
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: data.userId?.facePhoto ?? "",
                        imageBuilder: (context, provider) {
                          return Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(image: provider),
                            ),
                          );
                        },
                      ),
                      Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            border: Border.all(color: Colors.white, width: 3, strokeAlign: BorderSide.strokeAlignOutside),
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 new message from ${data.userId?.userType ?? "-"}!",
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black54),
                      ),
                      Text(
                        "${data.title ?? "-"}!",
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "View",
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                Text(
                  data.createdAt == null ? "--:--" : DateFormat("hh:mm a").format(data.createdAt!),
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
