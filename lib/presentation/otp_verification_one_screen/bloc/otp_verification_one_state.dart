// ignore_for_file: must_be_immutable

part of 'otp_verification_one_bloc.dart';

/// Represents the state of OtpVerificationOne in the application.
class OtpVerificationOneState extends Equatable {
  OtpVerificationOneState({
    this.otpController,
    this.otpVerificationOneModelObj,
  });

  TextEditingController? otpController;

  OtpVerificationOneModel? otpVerificationOneModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpVerificationOneModelObj,
      ];
  OtpVerificationOneState copyWith({
    TextEditingController? otpController,
    OtpVerificationOneModel? otpVerificationOneModelObj,
  }) {
    return OtpVerificationOneState(
      otpController: otpController ?? this.otpController,
      otpVerificationOneModelObj:
          otpVerificationOneModelObj ?? this.otpVerificationOneModelObj,
    );
  }
}
