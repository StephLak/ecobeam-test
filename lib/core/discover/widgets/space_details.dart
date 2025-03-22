import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_images.dart';
import 'package:ecobeam_test/constants/app_styles.dart';
import 'package:ecobeam_test/core/discover/model/space_model.dart';
import 'package:ecobeam_test/utils/image_factory.dart';
import 'package:flutter/material.dart';

class SpaceDetails extends StatelessWidget {
  const SpaceDetails({super.key, required this.data});

  final SpaceData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          data.title,
          style: Styles.mediumTextStyle(
            fontFamily: Styles.loraFontFamily,
            color: AppColors.textColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Row(
          children: [
            ImageFactory.getImage(AppImages.rating).render(),
            Text(
              '  ${data.rating} (${data.reviews} reviews)',
              style: Styles.regularTextStyle(
                  size: 12, color: AppColors.faintColor),
            ),
          ],
        ),
        Text(
          data.address,
          style: Styles.regularTextStyle(
            size: 12,
            color: AppColors.secondaryColor,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
