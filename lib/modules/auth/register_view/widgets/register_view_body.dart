import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';

import 'package:clinic_engine_task/modules/auth/register_view/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Create an account',
              style: AppStyles.styleBold14,
            ),
            const SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Introduce yourself',
                style: AppStyles.styleBold12.copyWith(color: primaryColor),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 80,
              height: 80,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 241, 241),
                  shape: BoxShape.circle),
              child: const Center(
                child: Icon(
                  FontAwesomeIcons.camera,
                  color: primaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const RegisterForm(),
          ],
        ),
      ),
    );
  }
}
