// ignore_for_file: must_be_immutable

part of 'new_eggs_bloc.dart';

/// Represents the state of NewEggs in the application.
class NewEggsState extends Equatable {
  NewEggsState({this.newEggsModelObj});

  NewEggsModel? newEggsModelObj;

  @override
  List<Object?> get props => [
        newEggsModelObj,
      ];
  NewEggsState copyWith({NewEggsModel? newEggsModelObj}) {
    return NewEggsState(
      newEggsModelObj: newEggsModelObj ?? this.newEggsModelObj,
    );
  }
}
