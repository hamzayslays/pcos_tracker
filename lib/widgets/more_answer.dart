import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';

class MoreAnswer extends StatefulWidget {
  final String text;
  final Function(bool isSelected)? onTap;

  const MoreAnswer({super.key, required this.text, this.onTap});

  @override
  State<MoreAnswer> createState() => _MoreAnswerState();
}

class _MoreAnswerState extends State<MoreAnswer> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
        widget.onTap?.call(_isSelected);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        height: 32.h,
        decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: _isSelected ? Colors.black : Colors.transparent,
            width: 1.2,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.montserrat(fontSize: 10.sp, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
