import 'package:clinic_engine_task/core/widgets/custom_button.dart';
import 'package:clinic_engine_task/modules/ask_your_doctor/presentation/views/widgets/custom_ask_your_doctor_tabbar.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:flutter/material.dart';

class AskYourDoctorView extends StatelessWidget {
  const AskYourDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar2(title: "Ask Your doctor"),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomAskYourDoctorTabBar(),
          ),
          const Expanded(
              child: SizedBox(
            height: 8,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 40,
              child: CustomButton(
                  text: "Create a new inquiry",
                  onPressed: () {},
                  widget: const SizedBox()),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
        ],
      ),
    );
  }
}
