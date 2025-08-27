import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableInfoCard extends StatelessWidget {
  final String titleText;
  final double titleFontSize;
  final FontWeight titleWeight;
  final Color titleColor;

  final String mainValue;
  final double mainValueFontSize;
  final FontWeight mainValueWeight;
  final Color mainValueColor;

  final String mainLabel;
  final double mainLabelFontSize;
  final FontWeight mainLabelWeight;
  final Color mainLabelColor;

  final String footerText;
  final double footerFontSize;
  final FontWeight footerWeight;
  final Color footerColor;

  final Widget trailingWidget; // right side widget (icon, image, circular widget, etc.)
  final Color cardColor;
  final double elevation;

  const ReusableInfoCard({
    super.key,
    required this.titleText,
    this.titleFontSize = 14,
    this.titleWeight = FontWeight.w400,
    this.titleColor = const Color(0xff2F4F4F),

    required this.mainValue,
    this.mainValueFontSize = 16,
    this.mainValueWeight = FontWeight.w600,
    this.mainValueColor = const Color(0xff2F4F4F),

    required this.mainLabel,
    this.mainLabelFontSize = 16,
    this.mainLabelWeight = FontWeight.w400,
    this.mainLabelColor = const Color(0xff2F4F4F),

    required this.footerText,
    this.footerFontSize = 11,
    this.footerWeight = FontWeight.w400,
    this.footerColor = const Color(0xff2F4F4F),

    required this.trailingWidget,
    this.cardColor = Colors.white,
    this.elevation = 0.4,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: elevation,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // LEFT COLUMN
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title Text
                Text(
                  titleText,
                  style: GoogleFonts.montserrat(
                    fontWeight: titleWeight,
                    color: titleColor,
                    fontSize: titleFontSize.sp,
                  ),
                ),

                // Main Value + Label Row
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Row(
                    children: [
                      Text(
                        mainValue,
                        style: GoogleFonts.montserrat(
                          fontWeight: mainValueWeight,
                          color: mainValueColor,
                          fontSize: mainValueFontSize.sp,
                        ),
                      ),
                      Text(
                        mainLabel,
                        style: GoogleFonts.montserrat(
                          fontWeight: mainLabelWeight,
                          color: mainLabelColor,
                          fontSize: mainLabelFontSize.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                // Footer Text
                Padding(
                  padding: EdgeInsets.only(top: 4.h),
                  child: Text(
                    footerText,
                    style: GoogleFonts.montserrat(
                      fontWeight: footerWeight,
                      color: footerColor,
                      fontSize: footerFontSize.sp,
                    ),
                  ),
                ),
              ],
            ),

            // RIGHT SIDE WIDGET (Progress, Icon, Image etc.)
            trailingWidget,
          ],
        ),
      ),
    );
  }
}
