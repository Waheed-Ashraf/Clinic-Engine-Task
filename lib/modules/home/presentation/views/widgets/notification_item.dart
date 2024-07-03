import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationItem({super.key, required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 9,
          child: Column(
            children: [
              Text(
                notificationModel.title,
                style: AppStyles.styleBold14,
              )
            ],
          ),
        )
      ],
    );
  }
}
