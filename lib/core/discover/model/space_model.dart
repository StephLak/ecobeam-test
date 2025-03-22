import 'package:ecobeam_test/constants/app_images.dart';

class SpaceData {
  SpaceData({
    required this.title,
    required this.rating,
    required this.reviews,
    required this.address,
    required this.minsAway,
    required this.images,
  });

  final String title;
  final String rating;
  final String reviews;
  final String address;
  final String minsAway;
  final List<String> images;
}

class Spaces {
  static List<SpaceData> all = [
    SpaceData(
      title: 'Workflow coworking space',
      rating: '4.5',
      reviews: '2.5k',
      address: '2972 Westheimer Rd. Santa Ana, Illinois 85486',
      minsAway: '12 mins',
      images: [
        AppImages.discover1,
        AppImages.discover2,
        AppImages.discover3,
        AppImages.discover6,
      ],
    ),
    SpaceData(
      title: 'Tech space',
      rating: '2.5',
      reviews: '3k',
      address: '2972 Santiago road, Arena, Illinois 85486',
      minsAway: '20 mins',
      images: [
        AppImages.discover4,
        AppImages.discover5,
        AppImages.discover6,
        AppImages.discover1,
      ],
    ),
    SpaceData(
      title: 'Space 1',
      rating: '4.3',
      reviews: '100',
      address: '1234 Street, City, Country',
      minsAway: '30 mins',
      images: [
        AppImages.discover2,
        AppImages.discover3,
        AppImages.discover6,
        AppImages.discover1,
      ],
    ),
    SpaceData(
      title: 'Space 2',
      rating: '2.5',
      reviews: '8.7k',
      address: '1234 Street, City, Country',
      minsAway: '1 hr',
      images: [
        AppImages.discover5,
        AppImages.discover2,
        AppImages.discover4,
        AppImages.discover1,
      ],
    ),
  ];
}
