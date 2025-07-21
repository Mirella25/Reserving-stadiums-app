import 'package:flutter/material.dart';
import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class DatePickerDropdownField extends StatefulWidget {
  final void Function(String ymd) onDateChanged;

  const DatePickerDropdownField({required this.onDateChanged, super.key});

  @override
  State<DatePickerDropdownField> createState() =>
      _DatePickerDropdownFieldState();
}

class _DatePickerDropdownFieldState extends State<DatePickerDropdownField> {
  int? _selectedDay;
  int? _selectedMonth;
  int? _selectedYear;

  void _emitIfComplete() {
    if (_selectedYear != null &&
        _selectedMonth != null &&
        _selectedDay != null) {
      widget.onDateChanged('$_selectedYear-$_selectedMonth-$_selectedDay');
    }
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Row(
      children: [
        Expanded(
          child: DropdownDatePicker(
            isFormValidator: true,
            startYear: now.year - 100,
            endYear: now.year,
            showDay: true,
            showMonth: true,
            showYear: true,
            hintDay: 'Day',
            hintMonth: 'Month',
            hintYear: 'Year',
            onChangedDay: (String? dayStr) {
              final day = int.tryParse(dayStr ?? '');
              if (day != null) {
                setState(() => _selectedDay = day);
                _emitIfComplete();
              }
            },
            onChangedMonth: (String? monthStr) {
              final month = int.tryParse(monthStr ?? '');
              if (month != null) {
                setState(() => _selectedMonth = month);
                _emitIfComplete();
              }
            },
            onChangedYear: (String? yearStr) {
              final year = int.tryParse(yearStr ?? '');
              if (year != null) {
                setState(() => _selectedYear = year);
                _emitIfComplete();
              }
            },
            isExpanded: true,
            menuHeight: 300,
            hintTextStyle: const TextStyle(
              color: Colors.grey,
              fontFamily: 'Lora',
            ),
            inputDecoration: const InputDecoration(
              hintStyle: TextStyle(
                color: Colors.grey,
                fontFamily: 'Lora',
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD1D0D0)),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFD1D0D0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
