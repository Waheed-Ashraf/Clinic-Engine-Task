import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/notification_model.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  static List<NotificationModel> notificationListData = [
    NotificationModel(
        title: "Prof Dr. Mohamed Saad",
        subTitle: "confirmation of the reservation request",
        date: "9:00 PM",
        pic: AssetsData.doctorPic),
    NotificationModel(
        title: "Prof Dr. Mohamed Saad",
        subTitle: "confirmation of the reservation request",
        date: "9:00 PM",
        pic: AssetsData.doctorPic),
    NotificationModel(
        title: "Prof Dr. Mohamed Saad",
        subTitle: "confirmation of the reservation request",
        date: "9:00 PM",
        pic: AssetsData.doctorPic),
    NotificationModel(
        title: "Prof Dr. Mohamed Saad",
        subTitle: "confirmation of the reservation request",
        date: "9:00 PM",
        pic: AssetsData.doctorPic),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: notificationListData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              NotificationItem(
                notificationModel: notificationListData[index],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(
                  height: 0,
                  thickness: .5,
                ),
              ),
            ],
          );
        });
  }
}
