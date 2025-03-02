import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text(
          'I agree to our terms and conditions.',
          style: AppStyles.styleBold12,
        )
      ],
    );
  }
}
