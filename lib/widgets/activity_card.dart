import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HealthCard extends StatelessWidget {
  final Widget title;
  final Widget leading;
  final String? centerText;
  final Color titleColor;

  final String firstText;
  final String secondText;
  final String thirdText;

  final Color firstColor;
  final Color secondColor;
  final Color thirdColor;

  final double firstSize;
  final double secondSize;
  final double thirdSize;

  final VoidCallback? onPressed;
  const HealthCard({
    super.key,
    required this.title,
    this.centerText,
    required this.titleColor,
    this.onPressed,
    required this.leading,
    required this.firstText,
    required this.secondText,
    required this.thirdText,

    required this.firstColor,
    required this.secondColor,
    required this.thirdColor,

    required this.firstSize,
    required this.secondSize,
    required this.thirdSize,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          leading,

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                firstText,
                style: GoogleFonts.montserrat(
                  fontSize: firstSize,
                  color: firstColor,
                ),
              ),

              Text(secondText,
                style: GoogleFonts.montserrat(),

              )

            ],
          ),
        ],
      ),
    );
  }
}
