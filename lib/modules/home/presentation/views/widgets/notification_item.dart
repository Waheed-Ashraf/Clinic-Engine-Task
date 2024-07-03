import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationItem extends StatefulWidget {
  final NotificationModel notificationModel;
  const NotificationItem({
    super.key,
    required this.notificationModel,
  });

  @override
  State<NotificationItem> createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  bool isOpend = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isOpend = true;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.notificationModel.title,
                    style: AppStyles.styleBold12
                        .copyWith(color: isOpend ? Colors.grey : Colors.black),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    widget.notificationModel.subTitle,
                    style: AppStyles.styleBold12
                        .copyWith(color: isOpend ? Colors.grey : Colors.black),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        FontAwesomeIcons.clock,
                        size: 18,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        widget.notificationModel.date,
                        style: AppStyles.styleRegular12.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                child: Center(
                  child: CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage(AssetsData.doctorPic),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
