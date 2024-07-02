import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/custom_services_card.dart';
import 'package:flutter/material.dart';

class ServicesRow extends StatelessWidget {
  const ServicesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomServicesCards(
              cardName: "Examination",
              cardPic: AssetsData.stethoscope,
            ),
          ),
          Expanded(
            child: CustomServicesCards(
              cardName: "Ultrasound",
              cardPic: AssetsData.ultrasound,
            ),
          ),
          Expanded(
            child: CustomServicesCards(
              cardName: "Chemotherapy",
              cardPic: AssetsData.chemotherapy,
            ),
          ),
        ],
      ),
    );
  }
}
