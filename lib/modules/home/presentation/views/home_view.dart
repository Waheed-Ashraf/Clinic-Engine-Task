import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_appbar.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_drower.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/home_elemets_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrower(),
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                onDrowerTaped: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
              const SizedBox(
                height: 8,
              ),
              const HomeElementsList(),
            ],
          ),
        ),
      ),
    );
  }
}
