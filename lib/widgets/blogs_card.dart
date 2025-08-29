import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/styles/app_colors.dart';

class BlogsCard extends StatelessWidget {
  final Map<String, dynamic> item; // ViewModel ka ek item

  const BlogsCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 248.w,
      margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Image.asset(
              item["image"]!,
              height: 150.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, bottom: 2.h),
            child: Text(
              item["title"]!,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff2F4F4F),
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w),
            child: Text(
              item["subtitle"]!,
              style: GoogleFonts.montserrat(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: item["subtitleColor"],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              top: 6.h,
              right: 16.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      item["icon"],
                      size: 16,
                      color: Color(0xff2F4F4F),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      item["votes"]!,
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Tell me more >',
                  style: GoogleFonts.montserrat(
                    fontSize: 12.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
