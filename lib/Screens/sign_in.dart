import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mr_pritam_client_app/CommonButton/common_button.dart';
import 'package:mr_pritam_client_app/NavBaarController/bottom_navbaar.dart';
import 'package:mr_pritam_client_app/common/notify_toast.dart';
import 'package:mr_pritam_client_app/controllers/auth_controller.dart';

import 'forgot_password.dart';

class SignInScreen extends HookConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());

    final authProvider = ref.read(authController.notifier);
    final showPassword = useState<bool>(false);

    final emailController = useTextEditingController();
    final isLoading = useState<bool>(false);

    Future<void> login() async {
      try {
        if (!formKey.currentState!.validate()) return;
        isLoading.value = true;
        if (emailController.text.trim().isEmpty) throw "Please enter email";

        final res = await authProvider.login(email: emailController.text.trim());
        NotifyToast.showSuccess(context, "Welcome ${res.firstName}");
        Navigator.of(context).pushAndRemoveUntil(CupertinoPageRoute(builder: (context) => const BottomNavbaar()), (route) => false);
      } catch (e) {
        NotifyToast.showError(context, e.toString());
      } finally {
        isLoading.value = false;
      }
    }

    bool isValidEmail(String email) {
      final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
      return emailRegex.hasMatch(email);
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Form(
            key: formKey,
            child: Column(
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
                      "Sign In",
                      style: GoogleFonts.plusJakartaSans(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.1,
                ),
                Text(
                  "Welcome Back!",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Please Enter  your Credentials to Log In",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email Address",
                      style: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(6),
                      child: TextFormField(
                        controller: emailController,
                        validator: (val) {
                          if (emailController.text.trim().isEmpty) return "Required";
                          if (!isValidEmail(emailController.text.trim())) return "Invalid Email";
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          hintText: "Enter Email Address",
                          hintStyle: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Password",
                      style: GoogleFonts.plusJakartaSans(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 4),
                    Material(
                      elevation: 1,
                      borderRadius: BorderRadius.circular(6),
                      child: TextFormField(
                        obscureText: !showPassword.value,
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: () {
                              showPassword.value = !showPassword.value;
                            },
                            child: Icon(
                              showPassword.value ? Icons.visibility : Icons.visibility_off,
                              color: const Color(0xffF5A302),
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          hintText: "Enter Pasword",
                          hintStyle: GoogleFonts.plusJakartaSans(fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                      ),
                    ),
                    const SizedBox(height: 64),
                    CommonButton(
                      height: 55,
                      title: "LOG IN",
                      fontSize: 18.sp,
                      onPressed: login,
                      width: double.infinity,
                      textColor: Colors.white,
                      isLoading: isLoading.value,
                      color: const Color(0xffF5A302),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.to(
                      () => const ForgotPassword(),
                      transition: Transition.fadeIn,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.plusJakartaSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
