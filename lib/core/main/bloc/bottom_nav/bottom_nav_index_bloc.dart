import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_event.dart';
import 'package:ecobeam_test/core/main/bloc/bottom_nav/bottom_nav_index_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavIndexBloc
    extends Bloc<BottomNavIndexEvent, BottomNavIndexState> {
  BottomNavIndexBloc() : super(BottomNavIndexState(1)) {
    on<SetBottomNavIndex>(_setIndex);
  }

  void _setIndex(SetBottomNavIndex event, Emitter<BottomNavIndexState> emit) {
    emit(BottomNavIndexState(event.index));
  }
}
