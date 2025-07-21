import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {
  final String hintText;
  final List<DropdownMenuItem<String>> itemList;
  final String? Function(String?) onChanged;
  final IconData icon;
  final String? Function(String?)? validator;
  const CustomDropdownField(
      {super.key,
      required this.hintText,
      required this.itemList,
      required this.onChanged,
      required this.icon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(
            icon,
            color: Colors.grey,
          ),
        ),
        Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButtonFormField<String>(
              validator: validator,
              iconEnabledColor: Colors.grey,
              hint: Text(
                hintText,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lora',
                ),
              ),
              items: itemList,
              onChanged: onChanged,
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
            ),
          ),
        ),
      ],
    );
  }
}
