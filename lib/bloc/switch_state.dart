import 'package:equatable/equatable.dart';

class switchStates extends Equatable {
  bool isSwitch;
  double slider;
  switchStates({this.isSwitch = false, this.slider = 1.0});
  switchStates copyWith({bool? isSwitch}) {
    return switchStates(
        isSwitch: isSwitch ?? this.isSwitch, slider: slider ?? this.slider);
  }

  @override
  List<Object> get props => [isSwitch, slider];
}
