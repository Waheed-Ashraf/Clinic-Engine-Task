import 'package:clinic_engine_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomServicesCards extends StatelessWidget {
  final String cardName;
  final String cardPic;
  const CustomServicesCards(
      {super.key, required this.cardName, required this.cardPic});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                cardPic,
                width: 40,
              ),
              const SizedBox(
                height: 8,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  cardName,
                  style: AppStyles.styleBold12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
