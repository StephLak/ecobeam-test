abstract class BottomNavIndexEvent {}

class SetBottomNavIndex extends BottomNavIndexEvent {
  final int index;
  SetBottomNavIndex(this.index);
}
