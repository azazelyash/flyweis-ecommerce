import 'package:get/get.dart';

import '../Screens/choose_screen.dart';



class SplashController extends GetxController {
  @override
  void onInit() {
    navigateToHome();
    super.onInit();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const ChoosePanel());
    });
  }

}
