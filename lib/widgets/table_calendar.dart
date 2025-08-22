import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();

  /// multiple dates store hongi
  List<DateTime> _selectedDays = [];

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      firstDay: DateTime.utc(2020, 1, 1),
      lastDay: DateTime.utc(2030, 12, 31),
      focusedDay: _focusedDay,

      /// multiple selected days check
      selectedDayPredicate: (day) {
        return _selectedDays.any((d) => isSameDay(d, day));
      },

      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _focusedDay = focusedDay;

          if (_selectedDays.any((d) => isSameDay(d, selectedDay))) {
            _selectedDays.removeWhere((d) => isSameDay(d, selectedDay));
          } else {
            _selectedDays.add(selectedDay);
          }
        });
      },

      calendarFormat: CalendarFormat.month,
      startingDayOfWeek: StartingDayOfWeek.monday,

      headerStyle: HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        leftChevronVisible: false,
        rightChevronVisible: false,
        titleTextStyle: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headerMargin: const EdgeInsets.only(bottom: 16), // 👈 spacing month-year aur days ke beech
      ),

      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        todayDecoration: const BoxDecoration(),
        selectedDecoration: const BoxDecoration(
          color: Color(0xFF3875E9), // 👈 blue circle
          shape: BoxShape.circle,
        ),
        selectedTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.white, // 👈 text white inside blue circle
        ),
        defaultTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        weekendTextStyle: GoogleFonts.montserrat(
          fontSize: 14,
          // fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),

      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        weekendStyle: GoogleFonts.montserrat(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
