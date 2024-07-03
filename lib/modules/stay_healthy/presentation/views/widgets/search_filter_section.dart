import 'package:clinic_engine_task/modules/stay_healthy/presentation/controller/Button_cubit/button_cubit.dart';
import 'package:clinic_engine_task/modules/stay_healthy/presentation/views/widgets/custom_location_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchFiltersSection extends StatelessWidget {
  const SearchFiltersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: CustomLocationButton(
              onPressed: () {
                BlocProvider.of<ButtonCubit>(context).changeButton(0);
              },
              index: 0,
              text: 'Fifth Settlement',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: CustomLocationButton(
              onPressed: () {
                BlocProvider.of<ButtonCubit>(context).changeButton(1);
              },
              index: 1,
              text: 'Mansoura',
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: CustomLocationButton(
              onPressed: () {
                BlocProvider.of<ButtonCubit>(context).changeButton(2);
              },
              index: 2,
              text: "Online",
            ),
          ),
        ],
      ),
    );
  }
}
