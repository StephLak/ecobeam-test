import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecobeam_test/constants/app_colors.dart';
import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_bloc.dart';
import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_event.dart';
import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_state.dart';
import 'package:ecobeam_test/core/discover/model/space_model.dart';
import 'package:ecobeam_test/core/discover/widgets/space_details.dart';
import 'package:ecobeam_test/utils/view_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarouselContainer extends StatelessWidget {
  const CarouselContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final sliderBloc = BlocProvider.of<SliderIndexBloc>(context);
    final SpaceData data = Spaces.all[0];
    return Stack(
      children: [
        CarouselSlider(
          items: data.images
              .map(
                (String image) => SizedBox(
                  height: 196,
                  width: queryWidth(context),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 196,
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 1,
            aspectRatio: 2.0,
            initialPage: 0,
            onPageChanged: (index, reason) =>
                sliderBloc.add(SetSliderIndex(index)),
          ),
        ),
        Positioned(
          bottom: 30,
          right: 15,
          child: BlocBuilder<SliderIndexBloc, SliderIndexState>(
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: data.images.indexed.map(((int, String) item) {
                  final (index, value) = item;
                  bool isCurrent = index == state.index;
                  return Container(
                    height: 6,
                    width: isCurrent ? 18 : 6,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(39),
                      color: isCurrent
                          ? AppColors.primaryColor
                          : AppColors.whiteColor.withValues(alpha: 0.5),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ),
        Positioned(
          bottom: -1,
          child: Container(
            height: 84,
            width: 210,
            color: AppColors.whiteColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: SpaceDetails(
              data: data,
            ),
          ),
        )
      ],
    );
  }
}
