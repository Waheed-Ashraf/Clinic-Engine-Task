import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
