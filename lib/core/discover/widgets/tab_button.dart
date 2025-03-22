import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_styles.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_bloc.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_state.dart';
import 'package:ecobeam_test/utils/view_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    super.key,
    required this.title,
    required this.index,
    required this.isPressed,
  });

  final String title;
  final int index;
  final Function() isPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: isPressed,
      child: BlocBuilder<TabIndexBloc, TabIndexState>(
        builder: (context, state) {
          return Container(
            height: 50,
            width: queryWidth(context) / 2,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: index == state.index
                        ? AppColors.primaryColor
                        : AppColors.borderColor),
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: Styles.regularTextStyle(
                  color: index == state.index
                      ? AppColors.primaryColor
                      : AppColors.faintTab,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
