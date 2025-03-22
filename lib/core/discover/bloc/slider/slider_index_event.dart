abstract class SliderIndexEvent {}

class SetSliderIndex extends SliderIndexEvent {
  final int index;
  SetSliderIndex(this.index);
}
