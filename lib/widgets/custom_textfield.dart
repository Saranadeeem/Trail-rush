import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? label;
  final String? labelText;
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final String? suffixText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final bool readOnly;

  const CustomTextField({
    super.key,
    this.label,
    this.labelText,
    this.controller,
    required this.hintText,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.readOnly = false,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.suffixText,
    this.onChanged,
    this.onTap,
    this.floatingLabelBehavior,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Container(
            child: label,
          ),
        ),
        TextFormField(
          onChanged: onChanged,
          onTap: onTap,
          textCapitalization: textCapitalization,
          obscureText: obscureText,
          validator: validator,
          controller: controller,
          keyboardType: keyboardType,
          readOnly: readOnly,
          decoration: InputDecoration(
            floatingLabelBehavior: floatingLabelBehavior,
            hintText: hintText,
            labelText: labelText,
            suffixIcon: suffixIcon,
            suffixText: suffixText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          ),
        ),
      ],
    );
  }
}
