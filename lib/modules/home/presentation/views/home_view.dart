import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_appbar.dart';
import 'package:clinic_engine_task/modules/home/presentation/views/widgets/home_elemets_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  final void Function()? onDrowerTaped;

  const HomeView({super.key, this.onDrowerTaped});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomAppBar(onDrowerTaped: onDrowerTaped),
          const SizedBox(
            height: 8,
          ),
          const HomeElementsList(),
        ],
      ),
    );
  }
}
