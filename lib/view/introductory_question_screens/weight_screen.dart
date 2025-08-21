import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../resources/styles/app_colors.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Text(
              'When is your birthday?',
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w500,
                fontSize: 20.sp,
              ),
            ),
          ),
          Text(
            'By providing this information, we can offer you more personalized\n suggestions.',
            style: GoogleFonts.montserrat(fontSize: 15.sp),
          ),

        ],),
    );
  }
}
