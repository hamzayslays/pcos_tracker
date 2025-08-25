import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class WeekDaysRow extends StatelessWidget {
  final Function(DateTime)? onDaySelected; // callback jab din select ho
  final DateTime? selectedDate; // jo din selected ho

  WeekDaysRow({this.onDaySelected, this.selectedDate});

  List<DateTime> getCurrentWeek() {
    DateTime today = DateTime.now();
    return List.generate(7, (index) => today.add(Duration(days: index)));
  }

  @override
  Widget build(BuildContext context) {
    final weekDays = getCurrentWeek();

    return SizedBox(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: weekDays.length,
        itemBuilder: (context, index) {
          DateTime day = weekDays[index];
          String dayName = DateFormat('E').format(day); // Sun, Mon
          String dayNum = DateFormat('d').format(day); // 18, 19

          bool isSelected =
              selectedDate != null &&
              DateFormat('yyyy-MM-dd').format(day) ==
                  DateFormat('yyyy-MM-dd').format(selectedDate!);

          return GestureDetector(
            onTap: () => onDaySelected?.call(day),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    dayName,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff766C6C),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color:
                          isSelected ? Color(0xff8ABDE6) : Colors.transparent,

                    ),
                    alignment: Alignment.center,
                    child: Text(
                      dayNum,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white :  Color(0xff8ABDE6),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
