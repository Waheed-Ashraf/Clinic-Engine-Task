import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/account/presentation/views/widgets/custom_account_listtile.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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

class AccountAvatar extends StatelessWidget {
  const AccountAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: CircleAvatar(
            radius: 42,
            backgroundColor: primaryColor,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(AssetsData.profileImage),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.white)),
            child: const Center(
                child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                FontAwesomeIcons.penToSquare,
                color: Colors.white,
                size: 15,
              ),
            )),
          ),
        )
      ],
    );
  }
}
