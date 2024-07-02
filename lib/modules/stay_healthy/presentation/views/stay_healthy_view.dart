import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/stay_healhty_appbar.dart';
import 'package:flutter/material.dart';

class StayHealthyView extends StatelessWidget {
  const StayHealthyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [CustomStayHealthyAppBar()],
      ),
    );
  }
}
