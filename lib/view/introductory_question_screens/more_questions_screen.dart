import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';

class MoreQuestionsScreen extends StatelessWidget {
  const MoreQuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           Text(
        'Are you experiencing any of these symptoms?',
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
        ),
      ),

      ],
      ),
    );
  }
}
