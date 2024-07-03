import 'package:clinic_engine_task/modules/account/presentation/views/widgets/account_avatar.dart';
import 'package:clinic_engine_task/modules/account/presentation/views/widgets/custom_account_listtile.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/notifications_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar2(
            title: "Account",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NotificationView();
              }));
            },
          ),
          const SizedBox(
            height: 16,
          ),
          const AccountAvatar(),
          const SizedBox(
            height: 8,
          ),
          const CustomAccountListTile(
              listTileTitle: "Personal file",
              listTileLeadingIcon: FontAwesomeIcons.user),
          const Divider(
            height: .5,
          ),
          const CustomAccountListTile(
              listTileTitle: "Settings",
              listTileLeadingIcon: FontAwesomeIcons.gear),
          const Divider(
            height: .5,
          ),
          const CustomAccountListTile(
              listTileTitle: "Help",
              listTileLeadingIcon: FontAwesomeIcons.circleExclamation),
          const Divider(
            height: .5,
          ),
          const CustomAccountListTile(
              listTileTitle: "Privacy Policy",
              listTileLeadingIcon: FontAwesomeIcons.lock),
          const Divider(
            height: .5,
          ),
          const CustomAccountListTile(
              listTileTitle: "Sign out",
              listTileLeadingIcon: FontAwesomeIcons.circleArrowLeft),
        ],
      ),
    );
  }
}
