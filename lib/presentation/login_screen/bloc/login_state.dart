// ignore_for_file: must_be_immutable

part of 'login_bloc.dart';

/// Represents the state of Login in the application.
class LoginState extends Equatable {
  LoginState({
    this.phoneNumberController,
    this.loginModelObj,
  });

  TextEditingController? phoneNumberController;

  LoginModel? loginModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        loginModelObj,
      ];
  LoginState copyWith({
    TextEditingController? phoneNumberController,
    LoginModel? loginModelObj,
  }) {
    return LoginState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      loginModelObj: loginModelObj ?? this.loginModelObj,
    );
  }
}
