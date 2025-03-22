import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_bloc.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_bloc.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_bloc.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_state.dart';
import 'package:ecobeam_test/core/main/models/bottom_nav_model.dart';
import 'package:ecobeam_test/core/main/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavIndexBloc>(
          create: (BuildContext context) => BottomNavIndexBloc(),
        ),
        BlocProvider<SliderIndexBloc>(
          create: (BuildContext context) => SliderIndexBloc(),
        ),
        BlocProvider<TabIndexBloc>(
          create: (BuildContext context) => TabIndexBloc(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              BlocBuilder<BottomNavIndexBloc, BottomNavIndexState>(
                  builder: (context, state) {
                return BottomNavs.all
                    .firstWhere((item) => item.index == state.index)
                    .screen!;
              }),
              const CustomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
