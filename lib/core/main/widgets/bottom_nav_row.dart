import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_images.dart';
import 'package:ecobeam_test/constants/app_styles.dart';
import 'package:ecobeam_test/core/main/models/bottom_nav_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavRow extends StatelessWidget {
  const BottomNavRow({
    super.key,
    this.selectedIndex,
    this.isOnlyIcon = true,
    this.onTap,
  });

  final int? selectedIndex;
  final bool isOnlyIcon;
  final Function(int index)? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: BottomNavs.all.map(
        (nav) {
          return Expanded(
            child: nav.index != 3 && isOnlyIcon
                ? GestureDetector(
                    onTap: () => onTap!(nav.index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          nav.icon!,
                          height: 20,
                          color: selectedIndex == nav.index
                              ? AppColors.primaryColor
                              : AppColors.secondaryColor,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          nav.text!,
                          style: Styles.regularTextStyle(
                            size: 12,
                            color: selectedIndex == nav.index
                                ? AppColors.primaryColor
                                : AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                : nav.index == 3 && !isOnlyIcon
                    ? Image.asset(AppImages.centerButton)
                    : const SizedBox(),
          );
        },
      ).toList(),
    );
  }
}
