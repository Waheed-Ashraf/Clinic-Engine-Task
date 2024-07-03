import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/notification_list.dart';
import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar2(
              title: "Notifications",
              onTap: () {},
            ),
            const NotificationsList(),
          ],
        ),
      ),
    );
  }
}
