import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/userprofilelist_item_model.dart';import 'package:basri_s_application4/presentation/single_batch_view_income_page/models/single_batch_view_income_model.dart';part 'single_batch_view_income_event.dart';part 'single_batch_view_income_state.dart';/// A bloc that manages the state of a SingleBatchViewIncome according to the event that is dispatched to it.
class SingleBatchViewIncomeBloc extends Bloc<SingleBatchViewIncomeEvent, SingleBatchViewIncomeState> {SingleBatchViewIncomeBloc(SingleBatchViewIncomeState initialState) : super(initialState) { on<SingleBatchViewIncomeInitialEvent>(_onInitialize); }

List<UserprofilelistItemModel> fillUserprofilelistItemList() { return [UserprofilelistItemModel(date: "16/11/2021", userName: "Name", userCategory: "Category: Feed", userPoints: "7,000"), UserprofilelistItemModel(date: "16/11/2021", userName: "Name", userCategory: "Category: Feed", userPoints: "13,000"), UserprofilelistItemModel(date: "16/11/2021", userName: "Name", userCategory: "Category: Feed", userPoints: "6,000"), UserprofilelistItemModel(date: "16/11/2021", userName: "Name", userCategory: "Category: Feed", userPoints: "14,700"), UserprofilelistItemModel(date: "16/11/2021", userName: "Name", userCategory: "Category: Feed", userPoints: "3,000")]; } 
_onInitialize(SingleBatchViewIncomeInitialEvent event, Emitter<SingleBatchViewIncomeState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(singleBatchViewIncomeModelObj: state.singleBatchViewIncomeModelObj?.copyWith(userprofilelistItemList: fillUserprofilelistItemList()))); } 
 }
