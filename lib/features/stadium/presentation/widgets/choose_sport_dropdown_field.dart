import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reserving_stadiums_app/features/sport/domain/entities/sport_entity.dart';

class ChooseSportDropdownField extends StatelessWidget {
  final String? Function(dynamic) onChanged;
  final List<DropdownMenuItem<SportEntity>>? items;
  final SportEntity? selectedSport;
  const ChooseSportDropdownField(
      {super.key, required this.onChanged, this.items, this.selectedSport});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Icon(
            Icons.sports,
            color: Colors.grey,
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(8.0.w),
            child: DropdownButtonFormField<SportEntity>(
              iconEnabledColor: Colors.grey,
              hint: const Text(
                "Sport",
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lora',
                ),
              ),
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 209, 208, 208)),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 209, 208, 208)),
                ),
              ),
              value: selectedSport,
              validator: (val) => val == null ? "Required field" : null,
              onChanged: onChanged,
              items: items,
            ),
          ),
        ),
      ],
    );
  }
}
