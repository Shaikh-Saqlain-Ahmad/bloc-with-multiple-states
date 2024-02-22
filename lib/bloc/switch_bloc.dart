import 'package:bloc/bloc.dart';
import 'package:bloc_with_multiple_states/bloc/switch_event.dart';
import 'package:bloc_with_multiple_states/bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvents, switchStates> {
  SwitchBloc() : super(switchStates()) {
    on<EnableorDisableNotification>(_enableorDisableNotificaiton);
    on<SliderEvent>(_silder);
  }
  void _enableorDisableNotificaiton(
      EnableorDisableNotification events, Emitter<switchStates> emit) {
    emit(state.copyWith(isSwitch: !state.isSwitch));
  }

  void _silder(SliderEvent events, Emitter<switchStates> emit) {
    emit(state.copyWith(slider: events.slider));
  }
}
