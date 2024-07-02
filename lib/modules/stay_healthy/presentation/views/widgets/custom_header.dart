import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomHeader extends StatelessWidget {
  final String headerTitle;
  final String buttonName;
  const CustomHeader(
      {super.key, required this.headerTitle, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            headerTitle,
            style: AppStyles.styleBold14,
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              buttonName,
              style: AppStyles.styleMedium14.copyWith(
                color: greenColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
