import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

enum BorderType{
  none,
  solid,
  gradient
}

class LoginButtons extends StatelessWidget {
  final Color buttonColor;
  final Color textColor;
  final IconData? icon;
  final String text;
  final VoidCallback onPressed;
  final BorderType borderType;
  // final bool hasGradientBorder;
  final Widget? customIcon;
  final double? spacing;
  final Color? borderColor;
  final List<Color>? gradientColors;
  final Alignment? begin;
  final Alignment? end;
  final Color? iconColor;


  const LoginButtons({
    super.key,
    required this.buttonColor,
     this.icon,
    required this.text,
    required this.onPressed,
    this.customIcon,
    required this.textColor,
    this.borderType = BorderType.none,
    // this.hasGradientBorder = false,
    this.spacing = 8.0,
    this.borderColor,
    this.gradientColors,
    this.begin,
    this.end,
    this.iconColor,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 38.h,
        width: double.infinity,
        decoration: _buildDecoration(),
        child: borderType == BorderType.gradient
            ? Container(
          margin: EdgeInsets.all(2.r),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: _buildContent(),
        )
            : _buildContent(),
      ),
    );
  }

  BoxDecoration _buildDecoration() {
    switch (borderType) {
      case BorderType.gradient:
        return BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColors ??
                [Colors.red, Colors.yellow, Colors.green, Colors.blue],
            begin: begin ?? Alignment.topLeft,
            end: end ?? Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12.r),
        );


      case BorderType.solid:
        return BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: borderColor ?? Colors.grey.shade400),
        );

      case BorderType.none:
      default:
        return BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10.r),
        );
    }
  }

  Widget _buildContent() {
    return Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if(customIcon != null)
                  customIcon!
                else if (icon != null)
                  Icon(icon, color: iconColor ?? textColor),
                if (customIcon != null || icon != null)
                  SizedBox(width: spacing),
                Text(
                  text,
                  style: GoogleFonts.montserrat(color: textColor, fontSize: 15.sp),
                ),

              ],
            ),
          );

  }
}
