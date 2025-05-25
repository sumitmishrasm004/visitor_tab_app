import 'package:flutter/material.dart';
import 'package:visitor_app/constant/colors/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String placeholder;
  TextInputType keyboardType;
  FormFieldValidator validator;
  Function(String, TextEditingController)? onChange;
  TextEditingController controller;
  Widget? prefixIcon;
  bool? autovalidateMode;
  String? initialValue;
  Color? color;

  CustomTextField(
      {Key? key,
      required this.placeholder,
      required this.keyboardType,
      required this.validator,
      required this.controller,
      this.autovalidateMode,
      this.initialValue,
      this.onChange,
      this.prefixIcon,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
          controller: controller,
          onChanged: (value) {
            
          },
          initialValue: initialValue,
          validator: validator,
          keyboardType: keyboardType,
          style: const TextStyle(
              color: AppColors.black,
              fontSize: 14.0,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            suffixIconConstraints:
                BoxConstraints(maxHeight: 30.0, maxWidth: 30.0),
            prefixIcon: prefixIcon,
            contentPadding:
                new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.5, color: AppColors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.5, color: AppColors.barRed),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 0.5, color: AppColors.barRed),
              borderRadius: BorderRadius.circular(6),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.0, color: AppColors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.0, color: AppColors.grey),
              borderRadius: BorderRadius.circular(6),
            ),
            hintText: placeholder,
            hintStyle: const TextStyle(
                fontFamily: 'Lato',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: AppColors.grey8),
          ),
        );
  }
}