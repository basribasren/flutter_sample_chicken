import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:basri_s_application4/presentation/single_batch_records_tab_container_screen/models/single_batch_records_tab_container_model.dart';part 'single_batch_records_tab_container_event.dart';part 'single_batch_records_tab_container_state.dart';/// A bloc that manages the state of a SingleBatchRecordsTabContainer according to the event that is dispatched to it.
class SingleBatchRecordsTabContainerBloc extends Bloc<SingleBatchRecordsTabContainerEvent, SingleBatchRecordsTabContainerState> {SingleBatchRecordsTabContainerBloc(SingleBatchRecordsTabContainerState initialState) : super(initialState) { on<SingleBatchRecordsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(SingleBatchRecordsTabContainerInitialEvent event, Emitter<SingleBatchRecordsTabContainerState> emit, ) async  {  } 
 }
