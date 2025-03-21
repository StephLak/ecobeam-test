import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_bloc.dart';
import 'package:ecobeam_test/core/main/widgets/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => BottomNavIndexBloc(),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Stack(
            children: [
              Container(),
              const CustomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
