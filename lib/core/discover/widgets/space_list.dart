import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/constants/app_constants.dart';
import 'package:ecobeam_test/constants/app_images.dart';
import 'package:ecobeam_test/constants/app_styles.dart';
import 'package:ecobeam_test/core/discover/model/space_model.dart';
import 'package:ecobeam_test/core/discover/widgets/space_details.dart';
import 'package:ecobeam_test/utils/image_factory.dart';
import 'package:ecobeam_test/utils/view_utils.dart';
import 'package:flutter/material.dart';

class SpaceList extends StatelessWidget {
  const SpaceList({super.key, required this.list});

  final List<SpaceData> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: list.length,
        padding: EdgeInsets.only(bottom: 80),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final SpaceData item = list[index];
          return Container(
            padding: EdgeInsets.only(bottom: 15),
            margin: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: AppColors.borderColor),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 106,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: item.images.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(
                        left: queryWidth(context) * 0.05, top: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 106,
                        width: 106,
                        margin: EdgeInsets.only(right: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            AppConstants.imageRadius,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              item.images[index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: queryWidth(context) * 0.05),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 15, bottom: 5),
                        child: SpaceDetails(data: item),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              ImageFactory.getImage(AppImages.distance)
                                  .render(),
                              Text(
                                '  ${item.minsAway} away',
                                style: Styles.regularTextStyle(
                                    size: 12, color: AppColors.secondaryColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
