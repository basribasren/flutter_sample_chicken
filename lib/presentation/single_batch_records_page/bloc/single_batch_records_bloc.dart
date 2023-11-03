import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_records_page/models/single_batch_records_model.dart';part 'single_batch_records_event.dart';part 'single_batch_records_state.dart';/// A bloc that manages the state of a SingleBatchRecords according to the event that is dispatched to it.
class SingleBatchRecordsBloc extends Bloc<SingleBatchRecordsEvent, SingleBatchRecordsState> {SingleBatchRecordsBloc(SingleBatchRecordsState initialState) : super(initialState) { on<SingleBatchRecordsInitialEvent>(_onInitialize); }

_onInitialize(SingleBatchRecordsInitialEvent event, Emitter<SingleBatchRecordsState> emit, ) async  {  } 
 }
