import 'package:ecobeam_test/constants/app_images.dart';
import 'package:ecobeam_test/core/discover/view/discover_screen.dart';
import 'package:flutter/material.dart';

class BottomNav {
  final int index;
  final String? icon;
  final String? text;
  final Widget? screen;

  BottomNav({
    required this.index,
    this.icon,
    this.text,
    this.screen,
  });
}

class BottomNavs {
  static List<BottomNav> all = [
    BottomNav(
      index: 1,
      icon: AppImages.discover,
      text: 'Discover',
      screen: DiscoverScreen(),
    ),
    BottomNav(
      index: 2,
      icon: AppImages.myBooking,
      text: 'My Booking',
      screen: Container(),
    ),
    BottomNav(index: 3),
    BottomNav(
      index: 4,
      icon: AppImages.mySpaces,
      text: 'My Spaces',
      screen: Container(),
    ),
    BottomNav(
      index: 5,
      icon: AppImages.profile_,
      text: 'Profile',
      screen: Container(),
    ),
  ];
}
