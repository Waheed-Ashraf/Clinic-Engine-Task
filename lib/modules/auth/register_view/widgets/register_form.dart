// ignore_for_file: unused_local_variable, must_be_immutable

import 'package:clinic_engine_task/core/widgets/custom_button.dart';
import 'package:clinic_engine_task/core/widgets/custom_text_field.dart';
import 'package:clinic_engine_task/modules/auth/register_view/widgets/check_box_widget.dart';
import 'package:clinic_engine_task/modules/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({
    super.key,
    this.fullName,
    this.email,
    // this.password,
    // this.confirmPassword,
  });

  String? email;
  String? fullName;
  // String? password;
  // String? confirmPassword;

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter first name",
            onChanged: (data) {
              widget.fullName = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'You have to fill this field';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          CustomTextField(
            text: "Enter another name",
            onChanged: (data) {
              widget.fullName = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'You have to fill this field';
              }
              return null;
            },
          ),
          const SizedBox(height: 8),

          CustomTextField(
            text: "Enter your email address",
            onChanged: (data) {
              widget.email = data;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'you have to enter your Email';
              } else if (!value.contains('@')) {
                return "your Email must contains '@'";
              } else if (!value.contains('.')) {
                return "your Email must contains '.com'";
              }

              return null;
            },
          ),
          // const SizedBox(height: 8),
          // CustomTextField(
          //   text: "كلمة السر",
          //   isPassword: true,
          //   onChanged: (data) {
          //     widget.password = data;
          //   },
          //   validator: (value) {
          //     if (value!.isEmpty) {
          //       return 'أدخل كلمة مرور مناسبة';
          //     }
          //     return null;
          //   },
          // ),
          // const SizedBox(height: 8),
          // CustomTextField(
          //   text: "أعد إدخال كلمة السر",
          //   isPassword: true,
          //   onChanged: (data) {
          //     widget.confirmPassword = data;
          //   },
          //   validator: (value) {
          //     if (value != widget.password) {
          //       return 'كلمة المرور غير متطابقة';
          //     }
          //     return null;
          //   },
          // ),
          const CheckboxWidget(),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 40,
            child: CustomButton(
                widget: const SizedBox(),
                text: 'Continue',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const BottomBarScreen();
                    }));
                  }
                }),
          )
        ],
      ),
    );
  }
}
