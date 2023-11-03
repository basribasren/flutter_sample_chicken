import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/otp_verification_two_screen/models/otp_verification_two_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'otp_verification_two_event.dart';part 'otp_verification_two_state.dart';/// A bloc that manages the state of a OtpVerificationTwo according to the event that is dispatched to it.
class OtpVerificationTwoBloc extends Bloc<OtpVerificationTwoEvent, OtpVerificationTwoState> with  CodeAutoFill {OtpVerificationTwoBloc(OtpVerificationTwoState initialState) : super(initialState) { on<OtpVerificationTwoInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<OtpVerificationTwoState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(OtpVerificationTwoInitialEvent event, Emitter<OtpVerificationTwoState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
