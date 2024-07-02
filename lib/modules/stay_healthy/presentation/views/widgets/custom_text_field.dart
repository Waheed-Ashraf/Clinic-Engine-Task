import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
    this.onChanged,
    required this.text,
    this.controller,
  });

  final Function(String)? onChanged;
  final String text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(8),
      child: TextFormField(
        style: AppStyles.styleBold12.copyWith(
          color: Colors.grey[600],
        ),
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: text,
            hintStyle: AppStyles.styleRegular12.copyWith(
              color: Colors.grey[600],
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 12, top: 12, bottom: 12),
              child: SvgPicture.asset(
                AssetsData.searchIcon,
              ),
            )),
      ),
    );
  }
}
