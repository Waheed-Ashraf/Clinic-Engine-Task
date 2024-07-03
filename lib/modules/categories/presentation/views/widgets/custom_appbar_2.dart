import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_bill.dart';
import 'package:flutter/material.dart';

class CustomAppBar2 extends StatelessWidget {
  final String title;
  final Function() onTap;
  const CustomAppBar2({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 43,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return const BottomBarScreen();
                  }));
                },
                child: const Icon(
                  Icons.arrow_circle_left_outlined,
                  size: 28,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              GestureDetector(onTap: onTap, child: const NotificationBill2()),
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
