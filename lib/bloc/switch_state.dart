import 'package:equatable/equatable.dart';

class switchStates extends Equatable {
  bool isSwitch;
  switchStates({this.isSwitch = false});
  switchStates copyWith({bool? isSwitch}) {
    return switchStates(isSwitch: isSwitch ?? this.isSwitch);
  }

  @override
  List<Object> get props => [isSwitch];
}
