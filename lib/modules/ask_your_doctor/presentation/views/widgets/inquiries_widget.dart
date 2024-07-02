import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';

class InquiriesWidget extends StatelessWidget {
  final String date;
  final String branchName;
  final String inquirie;
  const InquiriesWidget(
      {super.key,
      required this.date,
      required this.branchName,
      required this.inquirie});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          Text(
            date,
            style: AppStyles.styleRegular12.copyWith(
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            branchName,
            style: AppStyles.styleBold12,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            inquirie,
            style: AppStyles.styleBold12.copyWith(
              color: primaryColor,
            ),
          ),
          const Divider(
            thickness: 1,
            height: 16,
          ),
        ],
      ),
    );
  }
}
