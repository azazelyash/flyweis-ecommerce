import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonButton extends StatelessWidget {
  final Color? color;
  final String title;
  final double height;
  final double width;
  final double fontSize;
  final Color textColor;
  final BorderSide? borderSide;
  final void Function() onPressed;
  final bool isLoading;

  const CommonButton({
    super.key,
    this.color,
    required this.title,
    required this.height,
    required this.width,
    required this.fontSize,
    required this.textColor,
    required this.onPressed,
    this.borderSide,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          side: borderSide,
          backgroundColor: color,
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        child: isLoading
            ? const SpinKitThreeBounce(color: Colors.black, size: 20)
            : Text(
                title,
                style: GoogleFonts.poppins(
                  color: textColor,
                  fontSize: fontSize,
                ),
              ));
  }
}
