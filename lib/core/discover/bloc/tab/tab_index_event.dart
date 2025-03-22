abstract class TabIndexEvent {}

class SetTabIndex extends TabIndexEvent {
  final int index;
  SetTabIndex(this.index);
}
