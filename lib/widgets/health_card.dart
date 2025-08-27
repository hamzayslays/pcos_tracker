import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';
import 'package:pcos_tracker/widgets/circle_chart.dart'; // CircularProgressWidget

class HealthCard extends StatelessWidget {
  final String title;
  final double progress; // 0.0 to 1.0
  final Color progressColor;
  final String? centerText;
  final Color? centerTextColor;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final Widget? centerWidget;
  final Color titleColor;
  final VoidCallback? onPressed;

  const HealthCard({
    super.key,
    required this.title,
    required this.progress,
    this.progressColor = const Color(0xff8ABDE6),
    this.centerText,
    this.centerTextColor,
    required this.buttonText,
    this.buttonColor = const Color(0xff8ABDE6),
    this.buttonTextColor = Colors.white,
    this.centerWidget,
    this.titleColor = const Color(0xff8ABDE6), // default
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 150.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 8,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// 🔹 Title with dynamic color
            Text(
              title,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: titleColor,
              ),
            ),

            SizedBox(height: 10.h),

            /// 🔹 Progress Circle with flexible center
            Stack(
              alignment: Alignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 80.w,
                    height: 80.w,
                    child: CircularProgressWidget(
                      progress: progress,
                      progressColor: progressColor,
                    ),
                  ),
                ),

                /// Agar image pass ki hai toh wahi show hogi
                /// Warna agar centerText diya hai toh text show hoga
                /// Agar dono nahi hai toh khali space
                centerWidget ??
                    (centerText != null
                        ? Text(
                          centerText!,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: centerTextColor ?? Colors.black87,
                          ),
                        )
                        : const SizedBox.shrink()),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 10.h),
              child: Center(
                child: GestureDetector(
                  onTap: onPressed,
                  child: Container(
                    height: 32.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                      child: Text(
                        buttonText,
                        style: GoogleFonts.montserrat(
                          fontSize: 12.sp,
                          color: buttonTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



