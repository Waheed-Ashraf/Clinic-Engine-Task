import 'package:clinic_engine_task/modules/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final void Function()? onDrowerTaped;

  const HomeView({super.key, this.onDrowerTaped});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(onDrowerTaped: onDrowerTaped),
      ],
    );
  }
}
