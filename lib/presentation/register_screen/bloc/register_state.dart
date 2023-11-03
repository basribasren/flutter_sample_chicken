// ignore_for_file: must_be_immutable

part of 'register_bloc.dart';

/// Represents the state of Register in the application.
class RegisterState extends Equatable {
  RegisterState({
    this.userNameController,
    this.phoneNumberController,
    this.registerModelObj,
  });

  TextEditingController? userNameController;

  TextEditingController? phoneNumberController;

  RegisterModel? registerModelObj;

  @override
  List<Object?> get props => [
        userNameController,
        phoneNumberController,
        registerModelObj,
      ];
  RegisterState copyWith({
    TextEditingController? userNameController,
    TextEditingController? phoneNumberController,
    RegisterModel? registerModelObj,
  }) {
    return RegisterState(
      userNameController: userNameController ?? this.userNameController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      registerModelObj: registerModelObj ?? this.registerModelObj,
    );
  }
}
