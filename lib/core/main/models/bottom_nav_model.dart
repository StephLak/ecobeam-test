import 'package:ecobeam_test/constants/app_images.dart';

class BottomNav {
  final int index;
  final String? icon;
  final String? text;

  BottomNav({
    required this.index,
    this.icon,
    this.text,
  });
}

class BottomNavs {
  static List<BottomNav> all = [
    BottomNav(
      index: 1,
      icon: AppImages.discover,
      text: 'Discover',
    ),
    BottomNav(
      index: 2,
      icon: AppImages.myBooking,
      text: 'My Booking',
    ),
    BottomNav(index: 3),
    BottomNav(
      index: 4,
      icon: AppImages.mySpaces,
      text: 'My Spaces',
    ),
    BottomNav(
      index: 5,
      icon: AppImages.profile_,
      text: 'Profile',
    ),
  ];
}
