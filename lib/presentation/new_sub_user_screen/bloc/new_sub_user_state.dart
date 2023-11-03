// ignore_for_file: must_be_immutable

part of 'new_sub_user_bloc.dart';

/// Represents the state of NewSubUser in the application.
class NewSubUserState extends Equatable {
  NewSubUserState({this.newSubUserModelObj});

  NewSubUserModel? newSubUserModelObj;

  @override
  List<Object?> get props => [
        newSubUserModelObj,
      ];
  NewSubUserState copyWith({NewSubUserModel? newSubUserModelObj}) {
    return NewSubUserState(
      newSubUserModelObj: newSubUserModelObj ?? this.newSubUserModelObj,
    );
  }
}
