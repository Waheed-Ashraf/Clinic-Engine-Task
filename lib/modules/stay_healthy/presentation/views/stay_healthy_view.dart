import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_drower.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/custom_header.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/services_row.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/stay_healhty_appbar.dart';
import 'package:flutter/material.dart';

class StayHealthyView extends StatefulWidget {
  const StayHealthyView({super.key});

  @override
  State<StayHealthyView> createState() => _StayHealthyViewState();
}

class _StayHealthyViewState extends State<StayHealthyView> {
  final GlobalKey<ScaffoldState> scaffoldKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey2,
      drawer: const CustomDrower(),
      body: Column(
        children: [
          CustomStayHealthyAppBar(
            onDrowerTaped: () {
              scaffoldKey2.currentState!.openDrawer();
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomHeader(headerTitle: "Services", buttonName: "View all"),
          const SizedBox(
            height: 10,
          ),
          const ServicesRow(),
        ],
      ),
    );
  }
}
