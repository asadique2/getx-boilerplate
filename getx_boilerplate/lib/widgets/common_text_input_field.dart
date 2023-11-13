import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_boilerplate/app/theme/app_color.dart';
import 'package:getx_boilerplate/app/theme/styles.dart';
import 'package:getx_boilerplate/utils/helper/text_field_wrapper.dart';

class CommonTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final int? maxLength;
  final int? maxLines;
  final TextInputType textInputType;
  final TextFieldWrapper wrapper;
  final bool isEnabled;
  final bool obscureText;
  final bool isMandatory;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final onTap;
  final validator;
  final TextCapitalization? textCapitalization;

  const CommonTextField({
    Key? key,
    required this.wrapper,
    this.label,
    this.hint,
    this.maxLength,
    this.textInputType = TextInputType.text,
    this.isEnabled = true,
    this.obscureText = false,
    this.isMandatory = false,
    this.suffixIcon,
    this.textInputAction,
    this.validator,
    this.onTap,
    this.maxLines = 1,
    this.textCapitalization,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text: TextSpan(
                text: isMandatory ? "*" : '',
                style: Styles.tsBlackLight14.copyWith(color: AppColors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: label,
                      style: Styles.tsBlackRegular14
                          .copyWith(color: const Color(0xFF495057)))
                ]),
          ),
          const SizedBox(height: 6.0),
          TextFormField(
            onTap: onTap,
            controller: wrapper.controller,
            style: Styles.tsBlackRegular14,
            maxLength: maxLength,
            keyboardType: textInputType,
            enabled: isEnabled,
            obscureText: obscureText,
            textInputAction: textInputAction,
            validator: validator,
            maxLines: maxLines,
            readOnly: onTap != null ? true : false,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            decoration: InputDecoration(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 14.0, vertical: 16.0),
              errorMaxLines: null,
              isDense: true,
              errorText: wrapper.errorText.isEmpty ? null : wrapper.errorText,
              errorStyle: Styles.tsBlackRegular14.copyWith(color: AppColors.black),
              hintStyle: Styles.tsBlackRegular14,
              counterText: '',
              fillColor: isEnabled ? AppColors.white : const Color(0xFFEBEDEF),
              filled: true,
              hintText: hint ?? label,
              enabled: isEnabled,
              suffixIcon: onTap != null && suffixIcon == null
                  ? const Icon(Icons.arrow_drop_down_sharp,
                  size: 24.0, color: AppColors.black)
                  : suffixIcon,
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              border: border,
              enabledBorder: border,
              disabledBorder: border,
            ),
          ),
        ],
      ),
    );
  }
}

final OutlineInputBorder border = OutlineInputBorder(
  borderSide: const BorderSide(color: AppColors.black),
  borderRadius: BorderRadius.circular(8.0),
);
