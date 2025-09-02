import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomGridItem extends StatelessWidget {
  final String imagePath;
  final String? title;       // optional top text
  final String? bottomText;  // optional bottom text
  final String? buttonText;  // optional button

  const CustomGridItem({
    super.key,
    required this.imagePath,
    this.title,
    this.bottomText,
    this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ///  Optional Title
          if (title != null)
            Padding(
              padding: EdgeInsets.only(top: 8, left: 12, right: 12),
              child: Text(
                title!,
                style: GoogleFonts.montserrat(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),

          ///  Image
          Expanded(
            child: Center(
              child: Image.asset(
                imagePath,
                height: 60,
              ),
            ),
          ),

          ///  Optional Bottom Text
          if (bottomText != null)
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                bottomText!,
                style: GoogleFonts.montserrat(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

          ///  Optional Button
          if (buttonText != null)
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Container(
                padding:
                EdgeInsets.symmetric(horizontal: 20.w, vertical: 7.h),
                decoration: BoxDecoration(
                  color: const Color(0xff319F43),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  buttonText!,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
