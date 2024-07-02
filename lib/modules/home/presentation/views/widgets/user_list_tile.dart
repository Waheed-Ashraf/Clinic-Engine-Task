import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/users_model.dart';
import 'package:flutter/material.dart';

class UserListTile extends StatelessWidget {
  const UserListTile({
    super.key,
    required this.usersModel,
  });

  final UsersModel usersModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 28,
          backgroundColor: primaryColor,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(usersModel.image),
          ),
        ),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            usersModel.title,
            style: AppStyles.styleBold12,
          ),
        ),
        subtitle: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            usersModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
