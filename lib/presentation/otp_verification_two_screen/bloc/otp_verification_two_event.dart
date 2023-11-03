// ignore_for_file: must_be_immutable

part of 'otp_verification_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpVerificationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpVerificationTwoEvent extends Equatable {}

/// Event that is dispatched when the OtpVerificationTwo widget is first created.
class OtpVerificationTwoInitialEvent extends OtpVerificationTwoEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpVerificationTwoEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
