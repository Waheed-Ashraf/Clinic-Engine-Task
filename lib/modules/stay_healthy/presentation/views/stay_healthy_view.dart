import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_drower.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/controller/Button_cubit/button_cubit.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/custom_header.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/doctor_card.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/services_row.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/stay_healhty_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StayHealthyView extends StatefulWidget {
  const StayHealthyView({super.key});

  @override
  State<StayHealthyView> createState() => _StayHealthyViewState();
}

class _StayHealthyViewState extends State<StayHealthyView> {
  final GlobalKey<ScaffoldState> scaffoldKey2 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ButtonCubit(),
      child: Scaffold(
        key: scaffoldKey2,
        drawer: const CustomDrower(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomStayHealthyAppBar(
                onDrowerTaped: () {
                  scaffoldKey2.currentState!.openDrawer();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomHeader(
                  headerTitle: "Services", buttonName: "View all"),
              const SizedBox(
                height: 10,
              ),
              const ServicesRow(),
              const SizedBox(
                height: 10,
              ),
              const CustomHeader(
                  headerTitle: "The Doctors", buttonName: "View all"),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: DoctorCart(),
              ),
              const SizedBox(
                height: 48,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
