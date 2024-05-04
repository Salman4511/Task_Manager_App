import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/constants.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String label;
  final int? maxlines;
  final IconData? icon;
  const TextFormFieldWidget({
    super.key,
    required this.label,
    this.maxlines,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: kwhite,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          hintText: '  $label',
          suffixIcon: Icon(icon, color: kgrey),
          
          ),
      maxLines: maxlines,
      style: textstyle1,
    );
  }
}
