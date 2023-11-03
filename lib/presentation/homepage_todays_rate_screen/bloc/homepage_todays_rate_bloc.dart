import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/list_item_model.dart';import 'package:basri_s_application4/presentation/homepage_todays_rate_screen/models/homepage_todays_rate_model.dart';part 'homepage_todays_rate_event.dart';part 'homepage_todays_rate_state.dart';/// A bloc that manages the state of a HomepageTodaysRate according to the event that is dispatched to it.
class HomepageTodaysRateBloc extends Bloc<HomepageTodaysRateEvent, HomepageTodaysRateState> {HomepageTodaysRateBloc(HomepageTodaysRateState initialState) : super(initialState) { on<HomepageTodaysRateInitialEvent>(_onInitialize); }

List<ListItemModel> fillListItemList() { return [ListItemModel(userImage: ImageConstant.imgBirds1, text: "Broiler Chicken Rates"), ListItemModel(userImage: ImageConstant.imgCountryHicken700x700, text: "Deshi Chicken Rates"), ListItemModel(userImage: ImageConstant.imgFreshHealthyW, text: "Broiler Egg Rates")]; } 
_onInitialize(HomepageTodaysRateInitialEvent event, Emitter<HomepageTodaysRateState> emit, ) async  { emit(state.copyWith(menuThirtySevenController: TextEditingController())); emit(state.copyWith(homepageTodaysRateModelObj: state.homepageTodaysRateModelObj?.copyWith(listItemList: fillListItemList()))); } 
 }
