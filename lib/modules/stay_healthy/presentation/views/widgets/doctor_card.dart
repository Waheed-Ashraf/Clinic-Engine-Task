import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:clinic_engine_task/core/utils/assets_data.dart';
import 'package:clinic_engine_task/core/utils/constent_colors.dart';
import 'package:clinic_engine_task/core/widgets/custom_button.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/search_filter_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorCart extends StatelessWidget {
  const DoctorCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: SizedBox(
                      height: 120,
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          AssetsData.doctorPic,
                          fit: BoxFit.contain,
                        ),
                      ))),
                ),
                Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Professor Dr.Mohamed saad",
                            style: AppStyles.styleBold14,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Professor of Oncology Early Detection\nand Treatment Immunology and Genetics,\nFaculty of Medicine, Mansoura University.",
                            style: AppStyles.styleRegular12
                                .copyWith(color: primaryColor),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            5,
                            (index) => const Padding(
                              padding: EdgeInsets.only(right: 4),
                              child: Icon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))
              ],
            ),
          ),
          const SearchFiltersSection(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: CustomButton(
                  widget: const SizedBox(),
                  text: 'Appointment Booking',
                  onPressed: () {}),
            ),
          )
        ],
      ),
    );
  }
}
