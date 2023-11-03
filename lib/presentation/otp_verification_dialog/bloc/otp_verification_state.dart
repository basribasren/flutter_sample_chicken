// ignore_for_file: must_be_immutable

part of 'otp_verification_bloc.dart';

/// Represents the state of OtpVerification in the application.
class OtpVerificationState extends Equatable {
  OtpVerificationState({this.otpVerificationModelObj});

  OtpVerificationModel? otpVerificationModelObj;

  @override
  List<Object?> get props => [
        otpVerificationModelObj,
      ];
  OtpVerificationState copyWith(
      {OtpVerificationModel? otpVerificationModelObj}) {
    return OtpVerificationState(
      otpVerificationModelObj:
          otpVerificationModelObj ?? this.otpVerificationModelObj,
    );
  }
}
