// ignore_for_file: must_be_immutable

part of 'otp_verification_two_bloc.dart';

/// Represents the state of OtpVerificationTwo in the application.
class OtpVerificationTwoState extends Equatable {
  OtpVerificationTwoState({
    this.otpController,
    this.otpVerificationTwoModelObj,
  });

  TextEditingController? otpController;

  OtpVerificationTwoModel? otpVerificationTwoModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpVerificationTwoModelObj,
      ];
  OtpVerificationTwoState copyWith({
    TextEditingController? otpController,
    OtpVerificationTwoModel? otpVerificationTwoModelObj,
  }) {
    return OtpVerificationTwoState(
      otpController: otpController ?? this.otpController,
      otpVerificationTwoModelObj:
          otpVerificationTwoModelObj ?? this.otpVerificationTwoModelObj,
    );
  }
}
