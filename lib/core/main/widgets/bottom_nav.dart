import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_bloc.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_event.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_state.dart';
import 'package:ecobeam_test/core/main/widgets/bottom_nav_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavBloc = BlocProvider.of<BottomNavIndexBloc>(context);
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 100,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      spreadRadius: 0,
                      blurRadius: 32,
                      offset: Offset(0, -32),
                    ),
                  ],
                ),
                child: BlocBuilder<BottomNavIndexBloc, BottomNavIndexState>(
                  builder: (context, state) {
                    return BottomNavRow(
                      selectedIndex: state.index,
                      onTap: (value) => bottomNavBloc.add(
                        SetBottomNavIndex(value),
                      ),
                    );
                  },
                ),
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavRow(
                isOnlyIcon: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
