import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_bill.dart';
import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
  final String title;
  const CustomAppBar2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              Icon(
                Icons.arrow_circle_left_outlined,
                size: 28,
                color: Colors.white,
              ),
              Spacer(),
              Hero(tag: 'bill', child: NotificationBill2()),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: AppStyles.styleBold16.copyWith(
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
