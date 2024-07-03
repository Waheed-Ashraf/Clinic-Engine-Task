import 'package:clinic_engine_task/modules/account/presentation/views/widgets/account_avatar.dart';
import 'package:clinic_engine_task/modules/account/presentation/views/widgets/custom_account_listtile.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar2(
            title: "Account",
          ),
          SizedBox(
            height: 16,
          ),
          AccountAvatar(),
          SizedBox(
            height: 8,
          ),
          CustomAccountListTile(
              listTileTitle: "Personal file",
              listTileLeadingIcon: FontAwesomeIcons.user),
          Divider(
            height: .5,
          ),
          CustomAccountListTile(
              listTileTitle: "Settings",
              listTileLeadingIcon: FontAwesomeIcons.gear),
          Divider(
            height: .5,
          ),
          CustomAccountListTile(
              listTileTitle: "Help",
              listTileLeadingIcon: FontAwesomeIcons.circleExclamation),
          Divider(
            height: .5,
          ),
          CustomAccountListTile(
              listTileTitle: "Privacy Policy",
              listTileLeadingIcon: FontAwesomeIcons.lock),
          Divider(
            height: .5,
          ),
          CustomAccountListTile(
              listTileTitle: "Sign out",
              listTileLeadingIcon: FontAwesomeIcons.circleArrowLeft),
        ],
      ),
    );
  }
}
