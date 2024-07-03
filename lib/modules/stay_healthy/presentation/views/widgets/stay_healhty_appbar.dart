import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_bill.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomStayHealthyAppBar extends StatelessWidget {
  final void Function()? onDrowerTaped;
  const CustomStayHealthyAppBar({super.key, this.onDrowerTaped});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Container(
          height: 164,
          color: primaryColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 43,
              ),
              Row(
                children: [
                  const Hero(tag: 'billl', child: NotificationBill()),
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
        ),
      ),
      Positioned(
          bottom: 0,
          right: 16,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 32,
            child: const Center(
              child: CustomSearchTextField(
                  text: "Search by specialty and doctor's name"),
            ),
          )),
    ]);
  }
}
