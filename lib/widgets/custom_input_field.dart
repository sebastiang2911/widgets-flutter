import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String fromProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.fromProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: formValues[fromProperty],
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        prefixIcon: icon == null ? null : Icon(icon),
        suffixIcon: icon == null ? null : Icon(suffixIcon),
      ),
      onChanged: (value) {
        formValues[fromProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'This field is required';
        return value.length < 3 ? 'Name is too short' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: '*',
    );
  }
}
