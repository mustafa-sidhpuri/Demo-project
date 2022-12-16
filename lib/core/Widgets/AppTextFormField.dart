import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:size_config/size_config.dart';
import 'package:techypanther/core/Styling/AppColors.dart';
import 'package:techypanther/core/Widgets/AppTextWidget.dart';

/*
Changes (14-7-2022) (Mustafa): Interchanged suffix icon and suffix widget
 */
class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    Key? key,
    this.onChanged,
    required this.hintText,
    this.txtAlign,
    this.obscureText = false,
    this.suffixWidget,
    this.controller,
    this.focusNode,
    this.sideButton,
    this.validator,
    this.suffixStyle,
    this.suffixIcon,
    this.autoFocus = false,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.words,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.autoCorrect = false,
    this.isFilled,
    this.errorTxt,
    this.inputFormatters,
    this.keyboardType,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w500,
    this.cursorColor,
    this.prefixIcon,
    this.fillColor = AppColors.textField,
    this.borderWidth = 1.0,
    this.borderStyle = BorderStyle.solid,
    this.readOnly = false,
    this.maxLength,
    this.contentPadding,
    this.isValid,
    this.textColor = AppColors.text,
  }) : super(key: key);

  final Function(dynamic val)? onChanged;
  final String hintText;
  final TextInputType? keyboardType;
  final Function()? onEditingComplete;
  final Function(String val)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final TextAlign? txtAlign;
  final bool obscureText;
  final bool autoCorrect;
  final bool autoFocus;
  final bool? isFilled;
  final Widget? suffixWidget;
  final Widget? suffixIcon;
  final String? errorTxt;
  final TextStyle? suffixStyle;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Widget? sideButton;
  final String? Function(String?)? validator;
  final double fontSize;
  final int? maxLength;
  final FontWeight fontWeight;
  final Color? cursorColor;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? prefixIcon;
  final Color fillColor;
  final double borderWidth;
  final BorderStyle borderStyle;
  final bool readOnly;
  final Color textColor;
  final EdgeInsets? contentPadding;
  final bool? isValid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: !readOnly,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      focusNode: focusNode,
      autofocus: autoFocus,
      cursorColor: cursorColor,
      maxLength: maxLength,
      maxLines: 1,
      style: TextStyle(
          color: textColor,
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          overflow: TextOverflow.ellipsis),
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      readOnly: readOnly,
      decoration: InputDecoration(
        errorStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
        prefixIcon: isValid != null
            ? (isValid!
                ? const Icon(
                    Icons.check,
                    color: AppColors.success,
                  )
                : const Icon(
                    Icons.close,
                    color: AppColors.error,
                  ))
            : prefixIcon,
        contentPadding:
            contentPadding ?? EdgeInsets.only(top: 0, bottom: 15.h, left: 20.w),

        // isDense: true,
        errorText: errorTxt,
        icon: sideButton,
        suffix: suffixWidget, // previously it was suffixIcon
        suffixIcon: suffixIcon, // previously it was suffixWidget
        suffixStyle: suffixStyle,
        filled: true,
        alignLabelWithHint: true,
        label: Padding(
          padding: EdgeInsets.only(top: 11.h),
          child: AppTextWidget(
            txtTitle: hintText,
            fontSize: 12,
            txtColor: AppColors.hintText,
          ),
        ),
        // floatingLabelAlignment: FloatingLabelAlignment.start,
        // floatingLabelBehavior: FloatingLabelBehavior.auto,
        // hintText: hintText,
        // hintStyle: const TextStyle(
        //     color: AppColors.hintText,
        //     fontSize: 14,
        //     fontWeight: FontWeight.w400),
        fillColor: fillColor,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
      ),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      autocorrect: autoCorrect,
      validator: validator,
      inputFormatters: inputFormatters,
    );
  }
}
