import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/otp_verification_one_screen/models/otp_verification_one_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'otp_verification_one_event.dart';part 'otp_verification_one_state.dart';/// A bloc that manages the state of a OtpVerificationOne according to the event that is dispatched to it.
class OtpVerificationOneBloc extends Bloc<OtpVerificationOneEvent, OtpVerificationOneState> with  CodeAutoFill {OtpVerificationOneBloc(OtpVerificationOneState initialState) : super(initialState) { on<OtpVerificationOneInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<OtpVerificationOneState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(OtpVerificationOneInitialEvent event, Emitter<OtpVerificationOneState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
