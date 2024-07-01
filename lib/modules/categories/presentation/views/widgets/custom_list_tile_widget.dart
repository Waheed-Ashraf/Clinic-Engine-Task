import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final String listTileTitle;
  final String listTileLeadingIcon;
  const CustomListTileWidget(
      {super.key,
      required this.listTileTitle,
      required this.listTileLeadingIcon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.only(right: 8, left: 16),
        leading: Image.asset(
          listTileLeadingIcon,
          width: 27,
        ),
        title: Text(listTileTitle),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 23,
          color: primaryColor,
        ));
  }
}
