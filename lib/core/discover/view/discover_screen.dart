import 'package:ecobeam_test/constants/app_images.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_bloc.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_event.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_state.dart';
import 'package:ecobeam_test/core/discover/model/space_model.dart';
import 'package:ecobeam_test/core/discover/widgets/carousel_container.dart';
import 'package:ecobeam_test/core/discover/widgets/space_list.dart';
import 'package:ecobeam_test/core/discover/widgets/tab_button.dart';
import 'package:ecobeam_test/shared/custom_input/custom_input.dart';
import 'package:ecobeam_test/utils/image_factory.dart';
import 'package:ecobeam_test/utils/view_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabBloc = BlocProvider.of<TabIndexBloc>(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Column(
        children: [
          Center(
            child: ImageFactory.getImage(AppImages.logo).render(height: 24),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomInput(
              width: queryWidth(context) * 0.9,
              hint: 'Find...',
              prefixIcon:
                  ImageFactory.getImage(AppImages.searchPrefix).render(),
              suffixIcon: ImageFactory.getImage(AppImages.searchSuffix)
                  .render(width: 15),
            ),
          ),
          CarouselContainer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TabButton(
                  title: 'Discover',
                  index: 0,
                  isPressed: () => tabBloc.add(
                    SetTabIndex(0),
                  ),
                ),
                TabButton(
                  title: 'Favorites',
                  index: 1,
                  isPressed: () => tabBloc.add(
                    SetTabIndex(1),
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<TabIndexBloc, TabIndexState>(
            builder: (context, state) {
              return SpaceList(
                list:
                    state.index == 0 ? Spaces.all : Spaces.all.take(2).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
