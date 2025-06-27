import 'package:flutter/material.dart';

class CustomAuthTextField extends StatelessWidget {
  final IconData icon;
  final IconData? suffixIcon;
  final String hintText;
  final VoidCallback? onSuffixTap;
  final bool obscureText;
  const CustomAuthTextField(
      {super.key,
      required this.icon,
      required this.hintText,
      this.suffixIcon,
      this.onSuffixTap,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          flex: 1,
          child: Icon(
            icon,
            color: Colors.grey,
          )),
      Expanded(
          flex: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Lora',
                ),
                hintText: hintText,
                suffixIcon: GestureDetector(
                    onTap: onSuffixTap, child: Icon(suffixIcon)),
                suffixIconColor: Colors.grey,
                enabledBorder: const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 209, 208, 208)),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 209, 208, 208)),
                ),
              ),
            ),
          ))
    ]);
  }
}
