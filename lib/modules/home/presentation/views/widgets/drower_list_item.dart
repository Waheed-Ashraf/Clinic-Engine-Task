import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/drower_list_itme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrowerListItem extends StatelessWidget {
  const DrowerListItem({
    required this.isActive,
    super.key,
    required this.drowerListItemModel,
  });
  final bool isActive;
  final DrowerListItemModel drowerListItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(right: 8, left: 16),
      leading: SvgPicture.asset(
        drowerListItemModel.leadingIcon,
        width: 20,
        color: primaryColor,
      ),
      title: Text(
        drowerListItemModel.itemTiltle,
        style: isActive
            ? AppStyles.styleBold12.copyWith(color: primaryColor)
            : AppStyles.styleRegular12,
      ),
      trailing: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: 3,
        height: isActive ? 30 : 0,
        color: primaryColor,
      ),
    );
  }
}
