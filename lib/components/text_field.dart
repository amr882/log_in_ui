import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TextForm extends StatefulWidget {
  final bool obscureText;
  final Widget? suffixIcon;
  final String label;
  const TextForm(
      {super.key,
      required this.obscureText,
      this.suffixIcon,
      required this.label});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: TextField(
        cursorColor: Colors.black,
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon,
          label: Text(
            widget.label,
            style: const TextStyle(color: Colors.grey),
          ),
          border: const OutlineInputBorder(),

          // focused
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.grey)),

          // unfocused
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.grey)),
        ),
      ),
    );
  }
}
