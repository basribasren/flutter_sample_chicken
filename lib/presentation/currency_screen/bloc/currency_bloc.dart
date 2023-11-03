import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/currencylist_item_model.dart';import 'package:basri_s_application4/presentation/currency_screen/models/currency_model.dart';part 'currency_event.dart';part 'currency_state.dart';/// A bloc that manages the state of a Currency according to the event that is dispatched to it.
class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {CurrencyBloc(CurrencyState initialState) : super(initialState) { on<CurrencyInitialEvent>(_onInitialize); }

List<CurrencylistItemModel> fillCurrencylistItemList() { return [CurrencylistItemModel(price: "INR", userImage: ImageConstant.imgIconsaxLinearTickcircle)]; } 
_onInitialize(CurrencyInitialEvent event, Emitter<CurrencyState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(currencyModelObj: state.currencyModelObj?.copyWith(currencylistItemList: fillCurrencylistItemList()))); } 
 }
