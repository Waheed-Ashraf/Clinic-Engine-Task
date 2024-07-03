import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/controller/Button_cubit/button_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomLocationButton extends StatelessWidget {
  const CustomLocationButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    required this.onPressed,
    required this.index,
  });
  final int index;

  final void Function() onPressed;
  final String text;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ButtonCubit, int>(builder: (context, state) {
      Color buttonColor = index == state ? primaryColor : lightPrimaryColor;

      return SizedBox(
        height: 40,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ??
                  BorderRadius.circular(
                    4,
                  ),
            ),
          ),
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: AppStyles.styleBold12.copyWith(
                color: index == state ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      );
    });
  }
}
