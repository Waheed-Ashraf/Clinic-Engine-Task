import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/auth/register_view/register_view.dart';
import 'package:flutter/material.dart';

class CreateAccountWidget extends StatelessWidget {
  const CreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("You don't have an account. ", style: AppStyles.styleRegular14),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const RegisterView();
            }));
          },
          child: Text("Go to register",
              style: AppStyles.styleBold14.copyWith(color: primaryColor)),
        ),
      ],
    );
  }
}
