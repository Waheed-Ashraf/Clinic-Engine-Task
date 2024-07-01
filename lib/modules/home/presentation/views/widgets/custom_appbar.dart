import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_bill.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final void Function()? onDrowerTaped;
  const CustomAppBar({super.key, this.onDrowerTaped});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      color: primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const NotificationBill(),
              const Spacer(),
              InkWell(
                  onTap: onDrowerTaped,
                  child: const Icon(
                    FontAwesomeIcons.bars,
                    color: Colors.white,
                  ))
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Welcome back Waheed",
            style: AppStyles.styleRegular12.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "Stay Healthy!",
            style: AppStyles.styleBold16.copyWith(
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
