import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/home/presentation/models/home_items_model.dart';
import 'package:flutter/material.dart';

class HomeElementsList extends StatelessWidget {
  const HomeElementsList({super.key});
  static List<HomeItemModel> homeElementsItemsData = [
    HomeItemModel(itemName: "Appointment", itemImage: AssetsData.appointment),
    HomeItemModel(itemName: "Medical file", itemImage: AssetsData.medicalFile),
    HomeItemModel(
        itemName: "Ask your doctor", itemImage: AssetsData.askYourDoctor),
    HomeItemModel(
        itemName: "Customer service", itemImage: AssetsData.customerService),
    HomeItemModel(
        itemName: "Account settings", itemImage: AssetsData.accountSettings),
    HomeItemModel(itemName: "Services", itemImage: AssetsData.services),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: homeElementsItemsData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 8 / 6,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4),
        itemBuilder: (context, index) {
          return HomeItem(
            homeItemModel: homeElementsItemsData[index],
          );
        },
      ),
    );
  }
}

class HomeItem extends StatelessWidget {
  final HomeItemModel homeItemModel;
  const HomeItem({super.key, required this.homeItemModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: homeItemModel.itemFunction,
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                homeItemModel.itemName,
                style: AppStyles.styleBold12,
              ),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                homeItemModel.itemImage,
                width: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
