// ignore_for_file: must_be_immutable

part of 'otp_verification_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpVerificationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpVerificationOneEvent extends Equatable {}

/// Event that is dispatched when the OtpVerificationOne widget is first created.
class OtpVerificationOneInitialEvent extends OtpVerificationOneEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpVerificationOneEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
