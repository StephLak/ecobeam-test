import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_event.dart';
import 'package:ecobeam_test/core/discover/bloc/tab/tab_index_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabIndexBloc extends Bloc<TabIndexEvent, TabIndexState> {
  TabIndexBloc() : super(TabIndexState(0)) {
    on<SetTabIndex>(_setIndex);
  }

  void _setIndex(SetTabIndex event, Emitter<TabIndexState> emit) {
    emit(TabIndexState(event.index));
  }
}
