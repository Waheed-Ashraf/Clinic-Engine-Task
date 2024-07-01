import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/drower_list_itme.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/drower_list_item.dart';
import 'package:flutter/material.dart';

class DrowerList extends StatefulWidget {
  const DrowerList({super.key});

  @override
  State<DrowerList> createState() => _DrowerListState();
}

class _DrowerListState extends State<DrowerList> {
  List<DrowerListItemModel> drowerListData = [
    DrowerListItemModel(
        leadingIcon: AssetsData.icon1, itemTiltle: "Appointment"),
    DrowerListItemModel(
        leadingIcon: AssetsData.icon2, itemTiltle: "Medical file"),
    DrowerListItemModel(leadingIcon: AssetsData.icon3, itemTiltle: "Approvals"),
    DrowerListItemModel(
        leadingIcon: AssetsData.icon4, itemTiltle: "Ask your doctor"),
    DrowerListItemModel(
        leadingIcon: AssetsData.icon5, itemTiltle: "Notifications"),
    DrowerListItemModel(leadingIcon: AssetsData.icon1, itemTiltle: "Branches"),
    DrowerListItemModel(
        leadingIcon: AssetsData.icon2, itemTiltle: "Our servidces"),
    DrowerListItemModel(leadingIcon: AssetsData.icon3, itemTiltle: "Our Team"),
    DrowerListItemModel(leadingIcon: AssetsData.icon4, itemTiltle: "Ratings"),
    DrowerListItemModel(
        leadingIcon: AssetsData.icon5, itemTiltle: "Connect with us"),
    DrowerListItemModel(leadingIcon: AssetsData.icon2, itemTiltle: "Sessions"),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drowerListData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              if (currentIndex != index) {
                setState(() {
                  currentIndex = index;
                });
              }
            },
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: DrowerListItem(
                isActive: currentIndex == index,
                drowerListItemModel: drowerListData[index],
              ),
            ));
      },
    );
  }
}
