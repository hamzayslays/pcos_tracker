import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class YogaTab extends StatelessWidget {
  final List<Map<String, dynamic>> yogaList;

  const YogaTab({
    super.key,
    required this.yogaList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        /// Title
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
          child: Text(
            'Yoga',
            style: GoogleFonts.montserrat(
              fontSize: 27.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        /// GridView
        Expanded(
          child: GridView.builder(
            itemCount: yogaList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // per row 2 items
              crossAxisSpacing: 12,
              mainAxisSpacing: 8,
              childAspectRatio: 0.9,
            ),
            itemBuilder: (context, index) {
              final item = yogaList[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    /// Title Text
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 16),
                      child: Text(
                        item["title"],
                        style: GoogleFonts.montserrat(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                    /// Image
                    Expanded(
                      child: Center(
                        child: Image.asset(
                          item["image"],
                          height: 60,
                        ),
                      ),
                    ),

                    /// Button
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 7.h),
                          decoration: BoxDecoration(
                            color: const Color(0xff319F43),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            item["buttonText"],
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
