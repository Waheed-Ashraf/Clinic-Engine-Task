import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/users_model.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/drower_list.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(8))),
      width: MediaQuery.of(context).size.width * .6,
      child: Stack(children: [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: UserListTile(
                  usersModel: UsersModel(
                      image: AssetsData.profileImage,
                      title: "Waheed Ashraf",
                      subTitle: "washraf124@gmail.com"),
                ),
              ),
            ),
            const DrowerList(),
          ],
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width * .6,
              color: Colors.white,
              child: Center(
                child: ListTile(
                  leading: SvgPicture.asset(
                    AssetsData.logoutIcon,
                    width: 20,
                    color: primaryColor,
                  ),
                  title: Text("Logout account",
                      style: AppStyles.styleRegular12.copyWith()),
                ),
              ),
            )),
      ]),
    );
  }
}
