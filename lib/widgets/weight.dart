import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_ruler_picker/simple_ruler_picker.dart';

class WeightPicker extends StatefulWidget {
  final int minWeight;
  final int maxWeight;
  final int initialWeight;
  final ValueChanged<int> onWeightChanged;

  const WeightPicker({
    super.key,
    this.minWeight = 40,
    this.maxWeight = 120,
    this.initialWeight = 55,
    required this.onWeightChanged,
  });

  @override
  State<WeightPicker> createState() => _WeightPickerState();
}

class _WeightPickerState extends State<WeightPicker> {
  late int _selectedWeight;

  @override
  void initState() {
    super.initState();
    _selectedWeight = widget.initialWeight;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Selected weight text
        Text(
          _selectedWeight.toString(),
          style: GoogleFonts.montserrat(fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color(0xFFD2A47A),)
        ),
        const SizedBox(height: 8),
         Text(
          "Kg",
          style: GoogleFonts.montserrat(fontSize: 20,
            color: Color(0xFFD2A47A),
            fontWeight: FontWeight.w500,),
        ),
        const SizedBox(height: 20),
        // SimpleRulerPicker
        SimpleRulerPicker(
          minValue: widget.minWeight,
          maxValue: widget.maxWeight,
          initialValue: widget.initialWeight,
          onValueChanged: (value) {
            setState(() {
              _selectedWeight = value;
            });
            widget.onWeightChanged(value);
          },
          height: 120,
          scaleLabelSize: 18,
          scaleBottomPadding: 8,
          scaleItemWidth: 8,
          longLineHeight: 40,
          shortLineHeight: 20,
          lineColor: Colors.grey.shade400,
          selectedColor: Color(0xff2F4F4F),
          labelColor: Color(0xff6D6262),
          lineStroke: 2,
        ),
      ],
    );
  }
}
