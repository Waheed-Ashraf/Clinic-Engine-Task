import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_appbar_2.dart';
import 'package:clinic_engine_task/modules/categories/presentation/views/widgets/custom_list_tile_widget.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar2(
          title: "Category",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              CustomListTileWidget(
                listTileLeadingIcon: AssetsData.stethoscope,
                listTileTitle: "Examination",
              ),
              const Divider(
                height: .5,
              ),
              CustomListTileWidget(
                listTileLeadingIcon: AssetsData.ultrasound,
                listTileTitle: "Ultrasound",
              ),
              const Divider(
                height: .5,
              ),
              CustomListTileWidget(
                listTileLeadingIcon: AssetsData.chemotherapy,
                listTileTitle: "Chemotherapy",
              ),
              const Divider(
                height: .5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
