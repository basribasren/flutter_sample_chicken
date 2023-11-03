import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/otp_verification_dialog/models/otp_verification_model.dart';part 'otp_verification_event.dart';part 'otp_verification_state.dart';/// A bloc that manages the state of a OtpVerification according to the event that is dispatched to it.
class OtpVerificationBloc extends Bloc<OtpVerificationEvent, OtpVerificationState> {OtpVerificationBloc(OtpVerificationState initialState) : super(initialState) { on<OtpVerificationInitialEvent>(_onInitialize); }

_onInitialize(OtpVerificationInitialEvent event, Emitter<OtpVerificationState> emit, ) async  {  } 
 }
