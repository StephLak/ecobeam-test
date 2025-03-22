import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_constants.dart';
import 'package:ecobeam_test/constants/app_styles.dart';
import 'package:ecobeam_test/shared/custom_input/app_input_border.dart';
import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String? hint;
  final double? width;
  final double? height;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final bool enableInteractiveSelection;
  final TextInputType? inputType;

  const CustomInput({
    super.key,
    this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.width,
    this.controller,
    this.height,
    this.enableInteractiveSelection = true,
    this.inputType,
  });

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    Widget textField = TextFormField(
      enableInteractiveSelection: widget.enableInteractiveSelection,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: widget.controller,
      keyboardType: widget.inputType ?? TextInputType.text,
      style: Styles.mediumTextStyle(),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12),
        errorMaxLines: 1,
        hintText: widget.hint,
        hintStyle: Styles.regularTextStyle(
          fontFamily: Styles.loraFontFamily,
          color: AppColors.hintColor,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: widget.prefixIcon,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: widget.suffixIcon,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 16.27,
          maxWidth: 40,
        ),
        suffixIconConstraints: BoxConstraints(
          maxHeight: 16.27,
          maxWidth: 40,
        ),
        labelStyle: Styles.regularTextStyle(),
        counterText: '',
        filled: true,
        fillColor: AppColors.whiteColor,
        focusedBorder: AppInputBorders.border,
        border: AppInputBorders.border,
        enabledBorder: AppInputBorders.border,
      ),
    );

    return Container(
      padding: EdgeInsets.only(bottom: 20),
      width: widget.width ?? MediaQuery.of(context).size.width,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(
          AppConstants.inputRadius,
        ),
        child: textField,
      ),
    );
  }
}
