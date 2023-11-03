// ignore_for_file: must_be_immutable

part of 'new_body_weight_bloc.dart';

/// Represents the state of NewBodyWeight in the application.
class NewBodyWeightState extends Equatable {
  NewBodyWeightState({this.newBodyWeightModelObj});

  NewBodyWeightModel? newBodyWeightModelObj;

  @override
  List<Object?> get props => [
        newBodyWeightModelObj,
      ];
  NewBodyWeightState copyWith({NewBodyWeightModel? newBodyWeightModelObj}) {
    return NewBodyWeightState(
      newBodyWeightModelObj:
          newBodyWeightModelObj ?? this.newBodyWeightModelObj,
    );
  }
}
