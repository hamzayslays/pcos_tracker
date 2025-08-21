import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';
import 'package:pcos_tracker/widgets/date_of_birth.dart';
import 'package:pcos_tracker/widgets/login_buttons.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({super.key});

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  DateTime? selectedDOB;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
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

            Padding(
              padding: EdgeInsets.only(top: 56.h),
              child: DateOfBirth(
                initialDate: DateTime.now(),
                onDateChanged: (date) {
                  setState(() {
                    selectedDOB = date;
                  });
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 56.h),
              child: LoginButtons(
                buttonColor: Color(0xff8ABDE6),
                text: 'Next',
                onPressed: (){
                  
                },
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
