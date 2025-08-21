// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class DOBPicker extends StatefulWidget {
//   final Function(DateTime) onDateChanged; // callback to get selected date
//   final DateTime? initialDate;
//
//   const DOBPicker({super.key, required this.onDateChanged, this.initialDate});
//
//   @override
//   State<DOBPicker> createState() => _DOBPickerState();
// }
//
// class _DOBPickerState extends State<DOBPicker> {
//   late DateTime selectedDate;
//
//   @override
//   void initState() {
//     super.initState();
//     selectedDate = widget.initialDate ?? DateTime(2000, 1, 1);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200, // total height
//       child: Stack(
//         children: [
//           CupertinoDatePicker(
          //   mode: CupertinoDatePickerMode.date,
          //   initialDateTime: selectedDate,
          //   minimumDate: DateTime(1920, 1, 1),
          //   maximumDate: DateTime.now(),
          //   onDateTimeChanged: (DateTime newDate) {
          //     setState(() {
          //       selectedDate = newDate;
          //     });
          //     widget.onDateChanged(newDate);
          //   },
          // ),
//           // Top Divider
//           Align(
//             alignment: Alignment.topCenter,
//             child: Container(height: 2, color: Colors.grey),
//           ),
//           // Middle Divider (selected)
//           Align(
//             alignment: Alignment.center,
//             child: Container(height: 2, color: Colors.black),
//           ),
//           // Bottom Divider
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(height: 2, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DateOfBirth extends StatefulWidget {
  final Function(DateTime) onDateChanged;
  final DateTime? initialDate;

  const DateOfBirth({super.key, required this.onDateChanged, this.initialDate});

  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  late DateTime selectedDate;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedDate = widget.initialDate ?? DateTime(2000, 1, 1);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      height: 200.h,
      child: Stack(
        children: [
          CupertinoDatePicker(
            mode: CupertinoDatePickerMode.date,
              initialDateTime: selectedDate,
              maximumDate: DateTime.now(),
              onDateTimeChanged:  (DateTime newDate) {
              setState(() {
                selectedDate = newDate;
              });

              })

        ],
      ),
    );
  }
}
