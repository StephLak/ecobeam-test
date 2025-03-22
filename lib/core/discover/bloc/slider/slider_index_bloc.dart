import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_event.dart';
import 'package:ecobeam_test/core/discover/bloc/slider/slider_index_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderIndexBloc extends Bloc<SliderIndexEvent, SliderIndexState> {
  SliderIndexBloc() : super(SliderIndexState(0)) {
    on<SetSliderIndex>(_setIndex);
  }

  void _setIndex(SetSliderIndex event, Emitter<SliderIndexState> emit) {
    emit(SliderIndexState(event.index));
  }
}
