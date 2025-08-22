import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pcos_tracker/resources/styles/app_colors.dart';
import 'package:pcos_tracker/widgets/login_buttons.dart';
import 'package:pcos_tracker/widgets/more_answer.dart';
import 'package:pcos_tracker/widgets/table_calendar.dart';

class PeriodsMarkingScreen extends StatefulWidget {
  const PeriodsMarkingScreen({super.key});

  @override
  State<PeriodsMarkingScreen> createState() => _PeriodsMarkingScreenState();
}

class _PeriodsMarkingScreenState extends State<PeriodsMarkingScreen> {
  DateTime _focusedDay = DateTime.now();

  List<DateTime> _startDates = [];
  List<DateTime> _endDates = [];

  bool _isStartSelected = true;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _focusedDay = focusedDay;

      if (_isStartSelected) {
        /// Start Dates Select
        if (_startDates.any((d) => isSameDay(d, selectedDay))) {
          _startDates.removeWhere((d) => isSameDay(d, selectedDay));
        } else {
          _startDates.add(selectedDay);
        }
      } else {
        /// End Dates Select
        if (_endDates.any((d) => isSameDay(d, selectedDay))) {
          _endDates.removeWhere((d) => isSameDay(d, selectedDay));
        } else {
          _endDates.add(selectedDay);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              'skip',
              style: GoogleFonts.poppins(
                color: Color(0xff3875E9),
                fontSize: 18.sp,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 8),
              child: Text(
                'Mark the dates of your last period',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                ),
              ),
            ),

            Text(
              'This will us predict the next date of your period.',
              style: GoogleFonts.montserrat(fontSize: 13.sp),
            ),

            Padding(
              padding: EdgeInsets.only(top: 32.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Text(
                          'START',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff3875E9),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            'Select date',
                            style: GoogleFonts.poppins(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 50, // divider ki height set karo
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1,
                      width: 20,
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        Text(
                          'END',
                          style: GoogleFonts.poppins(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.0),
                          child: Text(
                            'Select date',
                            style: GoogleFonts.poppins(fontSize: 15.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: CalendarWidget(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'clear',
                  style: GoogleFonts.poppins(
                    color: Color(0xff3875E9),
                    fontSize: 18.sp,
                  ),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 32.h),
              child: LoginButtons(
                buttonColor: Color(0xff8ABDE6),
                text: 'Next',
                onPressed: () {
                  MoreAnswer.showAlert(
                    context,
                    'assets/tick.png',
                    'Period days have been\n updated!',
                    showDivider: true,
                    optionalText: 'Ok',
                  );
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
