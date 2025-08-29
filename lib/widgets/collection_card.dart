import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectionCard extends StatelessWidget {
  final Map<String, dynamic> item;
  final double width;
  final double height;

  const CollectionCard({
    super.key,
    required this.item,
    this.width = 200,   // default width
    this.height = 180,  // default height
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      margin: EdgeInsets.only(right: 16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  item["image"]!,
                  height: height.h,
                  width: width.w,
                  fit: BoxFit.cover,
                ),
              ),
              // Overlay button with articles count
              if (item["articlesCount"] != null)
                Positioned(
                  top: 8.h,
                  right: 8.w,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    child: Text(
                      "${item["articlesCount"]} articles",
                      style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: 8.h),
          // Title text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              item["title"]!,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }
}
