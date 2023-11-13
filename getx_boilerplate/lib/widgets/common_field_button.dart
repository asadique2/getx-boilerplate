import 'package:flutter/material.dart';
import 'package:getx_boilerplate/app/data/value/dimens.dart';
import 'package:getx_boilerplate/app/theme/app_color.dart';
import 'package:getx_boilerplate/app/theme/styles.dart';

class CommonFiledButton extends StatelessWidget {
  final double? height;
  final double? radius;
  final bool? isFilled;
  final bool? isEnable;
  final onTap;
  final String? buttonName;
  final Color? buttonColor;
  final Widget? btnWidget;
  final bool? isLoading;
  final TextStyle? style;

  const CommonFiledButton(
      {Key? key,
        this.height,
        this.isFilled,
        required this.onTap,
        this.buttonName,
        this.buttonColor,
        this.btnWidget,
        this.isLoading,
        this.style,
        this.radius,
        this.isEnable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap:
            isEnable ?? true ? (isLoading ?? false ? () {} : onTap) : () {},
            child: Container(
              height: height ?? Dimens.scaleX6,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isEnable ?? true
                      ? isFilled ?? true
                      ? AppColors.transparent
                      : AppColors.primaryColor
                      : AppColors.disable,
                ),
                borderRadius: BorderRadius.circular(radius ?? 24),
                color: isFilled ?? true
                    ? buttonColor ??
                    (isEnable ?? true
                        ? AppColors.primaryColor
                        : AppColors.disable)
                    : AppColors.transparent,
              ),
              child: isLoading ?? false
                  ? const Center(
                child: CircularProgressIndicator(),
              )
                  : btnWidget ??
                  Center(
                    child: Text(buttonName ?? 'NA',
                        style: isEnable ?? true
                            ? isFilled ?? true
                            ? style ??
                            Styles.tsBlackBold16.copyWith(
                                color: AppColors.white)
                            : Styles.tsBlackBold16
                            : Styles.tsBlackBold16
                            .copyWith(color: AppColors.disable)),
                  ),
            ),
          ),
        ),
      ],
    );
  }
}
