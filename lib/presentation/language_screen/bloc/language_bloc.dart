import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/languageoptions_item_model.dart';import 'package:basri_s_application4/presentation/language_screen/models/language_model.dart';part 'language_event.dart';part 'language_state.dart';/// A bloc that manages the state of a Language according to the event that is dispatched to it.
class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {LanguageBloc(LanguageState initialState) : super(initialState) { on<LanguageInitialEvent>(_onInitialize); }

List<LanguageoptionsItemModel> fillLanguageoptionsItemList() { return [LanguageoptionsItemModel(text: "English", imageClass: ImageConstant.imgIconsaxLinearTickcircle)]; } 
_onInitialize(LanguageInitialEvent event, Emitter<LanguageState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(languageModelObj: state.languageModelObj?.copyWith(languageoptionsItemList: fillLanguageoptionsItemList()))); } 
 }
